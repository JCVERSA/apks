.class abstract Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;
.super Lorg/mozilla/javascript/xml/XMLObject;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x2370829e71672c01L


# instance fields
.field private lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

.field private prototypeFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "XMLObject"

    sput-object v0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/xml/XMLObject;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->initialize(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;)V

    return-void
.end method

.method public static b([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public abstract addMatches(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XMLName;)V
.end method

.method public final addValues(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p3, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    check-cast p3, Lorg/mozilla/javascript/xml/XMLObject;

    move-object p2, p3

    move-object p3, p0

    goto :goto_0

    :cond_0
    check-cast p3, Lorg/mozilla/javascript/xml/XMLObject;

    move-object p2, p0

    :goto_0
    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p0, p1, p3, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->addXMLObjects(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/xml/XMLObject;Lorg/mozilla/javascript/xml/XMLObject;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p3, v0, :cond_2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/xml/XMLObject;->addValues(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->addMatches(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XMLName;)V

    return-object v0
.end method

.method public abstract child(I)Lorg/mozilla/javascript/xmlimpl/XMLList;
.end method

.method public abstract child(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
.end method

.method public abstract children()Lorg/mozilla/javascript/xmlimpl/XMLList;
.end method

.method public abstract comments()Lorg/mozilla/javascript/xmlimpl/XMLList;
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public abstract copy()Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;
.end method

.method public final createEmptyXML()Lorg/mozilla/javascript/xmlimpl/XML;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getProcessor()Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createEmpty(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    return-object p0
.end method

.method public final createNamespace(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)Lorg/mozilla/javascript/xmlimpl/Namespace;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    filled-new-array {p1}, [Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->createNamespaces([Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)[Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final createNamespaces([Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)[Lorg/mozilla/javascript/xmlimpl/Namespace;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->createNamespaces([Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)[Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p0

    return-object p0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameFromString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->deleteXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)V

    return-void
.end method

.method public final delete(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 3
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastUint32Result(Lorg/mozilla/javascript/Context;)J

    move-result-wide p1

    long-to-int p1, p1

    .line 4
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->delete(I)V

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->deleteXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)V

    return v0
.end method

.method public abstract deleteXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)V
.end method

.method public final ecmaEscapeAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->escapeAttributeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final ecmaToXml(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->ecmaToXml(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    return-object p0
.end method

.method public abstract elements(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
.end method

.method public enterDotQuery(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeWith;
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XMLWithScope;

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-direct {v0, v1, p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLWithScope;-><init>(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XMLWithScope;->initAsDotQuery()V

    return-object v0
.end method

.method public enterWith(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeWith;
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XMLWithScope;

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-direct {v0, v1, p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLWithScope;-><init>(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;)V

    return-object v0
.end method

.method public final equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->equivalentXml(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method

.method public abstract equivalentXml(Ljava/lang/Object;)Z
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0, p2, v1, p5}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->jsConstructor(Lorg/mozilla/javascript/Context;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v3, p4, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    if-eqz v3, :cond_22

    check-cast p4, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getXML()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->valueOf()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->toXMLString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32([Ljava/lang/Object;I)I

    move-result p0

    invoke-virtual {p4, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->toSource(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->text()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p0

    return-object p0

    :pswitch_5
    if-nez p1, :cond_3

    const-string p3, "setNamespace"

    invoke-virtual {p0, p4, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->castToNamespace(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XML;->setNamespace(Lorg/mozilla/javascript/xmlimpl/Namespace;)V

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :pswitch_6
    if-nez p1, :cond_4

    const-string p3, "setName"

    invoke-virtual {p0, p4, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    array-length p3, p5

    if-eqz p3, :cond_5

    aget-object p3, p5, v2

    goto :goto_1

    :cond_5
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_1
    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->constructQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XML;->setName(Lorg/mozilla/javascript/xmlimpl/QName;)V

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :pswitch_7
    if-nez p1, :cond_6

    const-string p2, "setLocalName"

    invoke-virtual {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Lorg/mozilla/javascript/xmlimpl/QName;

    if-eqz p2, :cond_7

    check-cast p0, Lorg/mozilla/javascript/xmlimpl/QName;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/QName;->localName()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_7
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XML;->setLocalName(Ljava/lang/String;)V

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :pswitch_8
    if-nez p1, :cond_8

    const-string p2, "setChildren"

    invoke-virtual {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XML;->setChildren(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    return-object p0

    :pswitch_9
    if-nez p1, :cond_9

    const-string p3, "replace"

    invoke-virtual {p0, p4, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p0

    invoke-static {p5, v1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    if-nez p0, :cond_a

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->lastUint32Result(Lorg/mozilla/javascript/Context;)J

    move-result-wide p4

    long-to-int p0, p4

    invoke-virtual {p1, p0, p3}, Lorg/mozilla/javascript/xmlimpl/XML;->replace(ILjava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p1, p0, p3}, Lorg/mozilla/javascript/xmlimpl/XML;->replace(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    return-object p0

    :pswitch_a
    if-nez p1, :cond_b

    const-string p3, "removeNamespace"

    invoke-virtual {p0, p4, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->castToNamespace(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XML;->removeNamespace(Lorg/mozilla/javascript/xmlimpl/Namespace;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p4, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->propertyIsEnumerable(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_c
    array-length p1, p5

    if-lez p1, :cond_c

    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    aget-object p1, p5, v2

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p0

    goto :goto_3

    :cond_c
    invoke-static {}, Lorg/mozilla/javascript/xmlimpl/XMLName;->formStar()Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p0

    :goto_3
    invoke-virtual {p4, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->processingInstructions(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p0

    return-object p0

    :pswitch_d
    if-nez p1, :cond_d

    const-string p2, "prependChild"

    invoke-virtual {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XML;->prependChild(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->parent()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->normalize()V

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :pswitch_10
    if-nez p1, :cond_e

    const-string p2, "nodeKind"

    invoke-virtual {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->nodeKind()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_11
    if-nez p1, :cond_f

    const-string p5, "namespaceDeclarations"

    invoke-virtual {p0, p4, p5}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->namespaceDeclarations()[Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->f([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :pswitch_12
    if-nez p1, :cond_10

    const-string p2, "namespace"

    invoke-virtual {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    array-length p0, p5

    if-lez p0, :cond_11

    aget-object p0, p5, v2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_11
    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/xmlimpl/XML;->namespace(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p0

    if-nez p0, :cond_12

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_12
    return-object p0

    :pswitch_13
    if-nez p1, :cond_13

    const-string p2, "name"

    invoke-virtual {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->name()Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p0

    return-object p0

    :pswitch_14
    if-nez p1, :cond_14

    const-string p2, "localName"

    invoke-virtual {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->localName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->length()I

    move-result p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->hasSimpleContent()Z

    move-result p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->hasComplexContent()Z

    move-result p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_18
    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p0

    invoke-virtual {p4, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->hasOwnProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z

    move-result p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_19
    if-nez p1, :cond_15

    const-string p2, "insertChildBefore"

    invoke-virtual {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_15
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_17

    instance-of p2, p0, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz p2, :cond_16

    goto :goto_4

    :cond_16
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :cond_17
    :goto_4
    check-cast p0, Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-static {p5, v1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->insertChildBefore(Lorg/mozilla/javascript/xmlimpl/XML;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    return-object p0

    :pswitch_1a
    if-nez p1, :cond_18

    const-string p2, "insertChildAfter"

    invoke-virtual {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_18
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1a

    instance-of p2, p0, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz p2, :cond_19

    goto :goto_5

    :cond_19
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :cond_1a
    :goto_5
    check-cast p0, Lorg/mozilla/javascript/xmlimpl/XML;

    invoke-static {p5, v1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lorg/mozilla/javascript/xmlimpl/XML;->insertChildAfter(Lorg/mozilla/javascript/xmlimpl/XML;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    return-object p0

    :pswitch_1b
    if-nez p1, :cond_1b

    const-string p5, "inScopeNamespaces"

    invoke-virtual {p0, p4, p5}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->inScopeNamespaces()[Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->f([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :pswitch_1c
    array-length p1, p5

    if-nez p1, :cond_1c

    invoke-static {}, Lorg/mozilla/javascript/xmlimpl/XMLName;->formStar()Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p0

    goto :goto_6

    :cond_1c
    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    aget-object p1, p5, v2

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p0

    :goto_6
    invoke-virtual {p4, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->elements(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p0

    return-object p0

    :pswitch_1d
    array-length p1, p5

    if-nez p1, :cond_1d

    invoke-static {v3, v3}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p0

    goto :goto_7

    :cond_1d
    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    aget-object p1, p5, v2

    invoke-virtual {p0, p2, p1, v2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toNodeQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Z)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p0

    :goto_7
    invoke-static {p0, v2, v1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;ZZ)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p0

    invoke-virtual {p4, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->c(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p0

    return-object p0

    :pswitch_1e
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->copy()Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;

    move-result-object p0

    return-object p0

    :pswitch_1f
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p4, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_20
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->comments()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p0

    return-object p0

    :pswitch_21
    invoke-virtual {p4}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->children()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p0

    return-object p0

    :pswitch_22
    if-nez p1, :cond_1e

    const-string p2, "childIndex"

    invoke-virtual {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1e
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XML;->childIndex()I

    move-result p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_23
    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p0

    if-nez p0, :cond_1f

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->lastUint32Result(Lorg/mozilla/javascript/Context;)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-virtual {p4, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->child(I)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p0

    return-object p0

    :cond_1f
    invoke-virtual {p4, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->child(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p0

    return-object p0

    :pswitch_24
    invoke-static {v3, v3}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;ZZ)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p0

    invoke-virtual {p4, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->c(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p0

    return-object p0

    :pswitch_25
    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1, v1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toNodeQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Z)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lorg/mozilla/javascript/xmlimpl/XMLName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;ZZ)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p0

    invoke-virtual {p4, p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->c(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p0

    return-object p0

    :pswitch_26
    if-nez p1, :cond_20

    const-string p2, "appendChild"

    invoke-virtual {p0, p4, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_20
    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XML;->appendChild(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    return-object p0

    :pswitch_27
    if-nez p1, :cond_21

    const-string p3, "addNamespace"

    invoke-virtual {p0, p4, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_21
    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-static {p5, v2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->castToNamespace(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/Namespace;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XML;->addNamespace(Lorg/mozilla/javascript/xmlimpl/Namespace;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    return-object p0

    :cond_22
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public final exportAsJSClass(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->prototypeFlag:Z

    const/16 v0, 0x29

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method public final f([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    array-length p0, p1

    new-array v0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x6e

    const/16 v3, 0x72

    const/16 v4, 0x6d

    const/16 v6, 0x64

    const/16 v7, 0x70

    const/16 v8, 0x69

    const/16 v9, 0x74

    const/16 v10, 0x73

    const/4 v11, 0x2

    const/16 v12, 0x61

    const/16 v13, 0x65

    const/4 v14, 0x3

    const/16 v15, 0x63

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const-string v1, "processingInstructions"

    const/16 v2, 0x1d

    goto/16 :goto_1

    :pswitch_2
    const-string v1, "namespaceDeclarations"

    const/16 v2, 0x18

    goto/16 :goto_1

    :pswitch_3
    const-string v1, "propertyIsEnumerable"

    const/16 v2, 0x1e

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_0

    const-string v1, "hasComplexContent"

    const/16 v2, 0x12

    goto/16 :goto_1

    :cond_0
    if-ne v1, v15, :cond_1

    const-string v1, "inScopeNamespaces"

    const/16 v2, 0xe

    goto/16 :goto_1

    :cond_1
    if-ne v1, v13, :cond_1c

    const-string v1, "insertChildBefore"

    const/16 v2, 0x10

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_2

    const-string v1, "hasSimpleContent"

    const/16 v2, 0x13

    goto/16 :goto_1

    :cond_2
    if-ne v1, v8, :cond_1c

    const-string v1, "insertChildAfter"

    const/16 v2, 0xf

    goto/16 :goto_1

    :pswitch_6
    const-string v1, "removeNamespace"

    const/16 v2, 0x1f

    goto/16 :goto_1

    :pswitch_7
    const-string v1, "hasOwnProperty"

    const/16 v2, 0x11

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_3

    const-string v1, "addNamespace"

    move v2, v11

    goto/16 :goto_1

    :cond_3
    if-ne v1, v7, :cond_4

    const-string v1, "prependChild"

    const/16 v2, 0x1c

    goto/16 :goto_1

    :cond_4
    if-ne v1, v10, :cond_1c

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_5

    const-string v1, "setLocalName"

    const/16 v2, 0x22

    goto/16 :goto_1

    :cond_5
    const/16 v2, 0x4e

    if-ne v1, v2, :cond_1c

    const-string v1, "setNamespace"

    const/16 v2, 0x24

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v12, :cond_a

    if-eq v1, v15, :cond_9

    if-eq v1, v6, :cond_8

    if-eq v1, v10, :cond_7

    if-eq v1, v9, :cond_6

    goto/16 :goto_0

    :cond_6
    const-string v1, "toXMLString"

    const/16 v2, 0x28

    goto/16 :goto_1

    :cond_7
    const-string v1, "setChildren"

    const/16 v2, 0x21

    goto/16 :goto_1

    :cond_8
    const-string v1, "descendants"

    const/16 v2, 0xc

    goto/16 :goto_1

    :cond_9
    const-string v1, "constructor"

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_a
    const-string v1, "appendChild"

    move v2, v14

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_b

    const-string v1, "attributes"

    const/4 v2, 0x5

    goto/16 :goto_1

    :cond_b
    if-ne v1, v15, :cond_1c

    const-string v1, "childIndex"

    const/4 v2, 0x7

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v15, :cond_f

    if-eq v1, v4, :cond_e

    if-eq v1, v3, :cond_d

    if-eq v1, v9, :cond_c

    goto/16 :goto_0

    :cond_c
    const-string v1, "attribute"

    const/4 v2, 0x4

    goto/16 :goto_1

    :cond_d
    const-string v1, "normalize"

    const/16 v2, 0x1a

    goto/16 :goto_1

    :cond_e
    const-string v1, "namespace"

    const/16 v2, 0x17

    goto/16 :goto_1

    :cond_f
    const-string v1, "localName"

    const/16 v2, 0x15

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x53

    if-eq v1, v3, :cond_15

    if-eq v1, v8, :cond_14

    if-eq v1, v6, :cond_13

    if-eq v1, v13, :cond_12

    if-eq v1, v4, :cond_11

    if-eq v1, v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const-string v1, "contains"

    const/16 v2, 0xa

    goto/16 :goto_1

    :cond_11
    const-string v1, "comments"

    const/16 v2, 0x9

    goto/16 :goto_1

    :cond_12
    const-string v1, "elements"

    const/16 v2, 0xd

    goto/16 :goto_1

    :cond_13
    const-string v1, "nodeKind"

    const/16 v2, 0x19

    goto/16 :goto_1

    :cond_14
    const-string v1, "children"

    const/16 v2, 0x8

    goto/16 :goto_1

    :cond_15
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_16

    const-string v1, "toSource"

    const/16 v2, 0x27

    goto :goto_1

    :cond_16
    const/16 v2, 0x67

    if-ne v1, v2, :cond_1c

    const-string v1, "toString"

    const/16 v2, 0x26

    goto :goto_1

    :pswitch_d
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_17

    const-string v1, "replace"

    const/16 v2, 0x20

    goto :goto_1

    :cond_17
    if-ne v1, v10, :cond_18

    const-string v1, "setName"

    const/16 v2, 0x23

    goto :goto_1

    :cond_18
    const/16 v2, 0x76

    if-ne v1, v2, :cond_1c

    const-string v1, "valueOf"

    const/16 v2, 0x29

    goto :goto_1

    :pswitch_e
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_19

    const-string v1, "length"

    const/16 v2, 0x14

    goto :goto_1

    :cond_19
    if-ne v1, v7, :cond_1c

    const-string v1, "parent"

    const/16 v2, 0x1b

    goto :goto_1

    :pswitch_f
    const-string v1, "child"

    const/4 v2, 0x6

    goto :goto_1

    :pswitch_10
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_1a

    const-string v1, "copy"

    const/16 v2, 0xb

    goto :goto_1

    :cond_1a
    if-ne v1, v2, :cond_1b

    const-string v1, "name"

    const/16 v2, 0x16

    goto :goto_1

    :cond_1b
    if-ne v1, v9, :cond_1c

    const-string v1, "text"

    const/16 v2, 0x25

    goto :goto_1

    :cond_1c
    :goto_0
    const/4 v1, 0x0

    move v2, v5

    :goto_1
    if-eqz v1, :cond_1d

    if-eq v1, v0, :cond_1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_2

    :cond_1d
    move v5, v2

    :goto_2
    return v5

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p2, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameFromString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p2

    if-nez p2, :cond_2

    .line 3
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastUint32Result(Lorg/mozilla/javascript/Context;)J

    move-result-wide p1

    long-to-int p1, p1

    .line 4
    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, p1, :cond_1

    .line 6
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_1
    return-object p0

    .line 7
    :cond_2
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionProperty(Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p2, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 4
    instance-of v0, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lorg/mozilla/javascript/xml/XMLObject;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xml/XMLObject;->getFunctionProperty(Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p0
.end method

.method public getFunctionProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-super {p0, p2, p0}, Lorg/mozilla/javascript/IdScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 10
    instance-of v0, p0, Lorg/mozilla/javascript/xml/XMLObject;

    if-eqz v0, :cond_1

    .line 11
    check-cast p0, Lorg/mozilla/javascript/xml/XMLObject;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xml/XMLObject;->getFunctionProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1
    sget-object p0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p0
.end method

.method public getLib()Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    return-object p0
.end method

.method public final getParentScope()Lorg/mozilla/javascript/Scriptable;
    .locals 0

    invoke-super {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public final getProcessor()Lorg/mozilla/javascript/xmlimpl/XmlProcessor;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->getProcessor()Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    move-result-object p0

    return-object p0
.end method

.method public final getPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 0

    invoke-super {p0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public abstract getXML()Lorg/mozilla/javascript/xmlimpl/XML;
.end method

.method public abstract getXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Ljava/lang/Object;
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    .line 6
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p2, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameFromString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->hasXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z

    move-result p0

    return p0
.end method

.method public final has(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p2

    if-nez p2, :cond_1

    .line 3
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastUint32Result(Lorg/mozilla/javascript/Context;)J

    move-result-wide p1

    long-to-int p1, p1

    .line 4
    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->hasXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z

    move-result p0

    return p0
.end method

.method public abstract hasComplexContent()Z
.end method

.method public final hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->hasInstance(Lorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    return p0
.end method

.method public abstract hasOwnProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z
.end method

.method public abstract hasSimpleContent()Z
.end method

.method public abstract hasXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;)Z
.end method

.method public initPrototypeId(I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string v0, "valueOf"

    :goto_0
    move v2, v1

    goto/16 :goto_2

    :pswitch_1
    const-string v0, "toXMLString"

    goto/16 :goto_2

    :pswitch_2
    const-string v0, "toSource"

    goto/16 :goto_2

    :pswitch_3
    const-string v0, "toString"

    goto :goto_0

    :pswitch_4
    const-string v0, "text"

    goto :goto_0

    :pswitch_5
    const-string v0, "setNamespace"

    goto/16 :goto_2

    :pswitch_6
    const-string v0, "setName"

    goto/16 :goto_2

    :pswitch_7
    const-string v0, "setLocalName"

    goto/16 :goto_2

    :pswitch_8
    const-string v0, "setChildren"

    goto/16 :goto_2

    :pswitch_9
    const-string v1, "replace"

    :goto_1
    move v2, v0

    move-object v0, v1

    goto/16 :goto_2

    :pswitch_a
    const-string v0, "removeNamespace"

    goto/16 :goto_2

    :pswitch_b
    const-string v0, "propertyIsEnumerable"

    goto/16 :goto_2

    :pswitch_c
    const-string v0, "processingInstructions"

    goto/16 :goto_2

    :pswitch_d
    const-string v0, "prependChild"

    goto/16 :goto_2

    :pswitch_e
    const-string v0, "parent"

    goto :goto_0

    :pswitch_f
    const-string v0, "normalize"

    goto :goto_0

    :pswitch_10
    const-string v0, "nodeKind"

    goto :goto_0

    :pswitch_11
    const-string v0, "namespaceDeclarations"

    goto :goto_0

    :pswitch_12
    const-string v0, "namespace"

    goto :goto_2

    :pswitch_13
    const-string v0, "name"

    goto :goto_0

    :pswitch_14
    const-string v0, "localName"

    goto :goto_0

    :pswitch_15
    const-string v0, "length"

    goto :goto_0

    :pswitch_16
    const-string v0, "hasSimpleContent"

    goto :goto_0

    :pswitch_17
    const-string v0, "hasComplexContent"

    goto :goto_0

    :pswitch_18
    const-string v0, "hasOwnProperty"

    goto :goto_2

    :pswitch_19
    const-string v1, "insertChildBefore"

    goto :goto_1

    :pswitch_1a
    const-string v1, "insertChildAfter"

    goto :goto_1

    :pswitch_1b
    const-string v0, "inScopeNamespaces"

    goto :goto_0

    :pswitch_1c
    const-string v0, "elements"

    goto :goto_2

    :pswitch_1d
    const-string v0, "descendants"

    goto :goto_2

    :pswitch_1e
    const-string v0, "copy"

    goto :goto_0

    :pswitch_1f
    const-string v0, "contains"

    goto :goto_2

    :pswitch_20
    const-string v0, "comments"

    goto :goto_0

    :pswitch_21
    const-string v0, "children"

    goto :goto_0

    :pswitch_22
    const-string v0, "childIndex"

    goto :goto_0

    :pswitch_23
    const-string v0, "child"

    goto :goto_2

    :pswitch_24
    const-string v0, "attributes"

    goto :goto_0

    :pswitch_25
    const-string v0, "attribute"

    goto :goto_2

    :pswitch_26
    const-string v0, "appendChild"

    goto :goto_2

    :pswitch_27
    const-string v0, "addNamespace"

    :goto_2
    sget-object v1, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0, v2}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_28
    instance-of v0, p0, Lorg/mozilla/javascript/xmlimpl/XML;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XMLCtor;

    move-object v1, p0

    check-cast v1, Lorg/mozilla/javascript/xmlimpl/XML;

    sget-object v3, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, p1, v2}, Lorg/mozilla/javascript/xmlimpl/XMLCtor;-><init>(Lorg/mozilla/javascript/xmlimpl/XML;Ljava/lang/Object;II)V

    goto :goto_3

    :cond_0
    new-instance v0, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v1, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->b:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;II)V

    :goto_3
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeConstructor(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public final initialize(Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/xml/XMLObject;)V
    .locals 0

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    if-nez p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->prototypeFlag:Z

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    return-void
.end method

.method public final isPrototype()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->prototypeFlag:Z

    return p0
.end method

.method public abstract jsConstructor(Lorg/mozilla/javascript/Context;Z[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public abstract length()I
.end method

.method public memberRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;I)Lorg/mozilla/javascript/Ref;
    .locals 3

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    move v1, v2

    :cond_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 2
    :cond_3
    :goto_1
    iget-object p3, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p3, p1, p2, v0}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toNodeQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Z)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    .line 3
    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;ZZ)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->initXMLObject(Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;)V

    return-object p1
.end method

.method public memberRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;I)Lorg/mozilla/javascript/Ref;
    .locals 3

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move v1, v2

    .line 5
    :cond_1
    iget-object p4, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p4, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toNodeQName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->create(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;ZZ)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XMLName;->initXMLObject(Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;)V

    return-object p1
.end method

.method public final newQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/QName;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p0

    return-object p0
.end method

.method public final newQName(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)Lorg/mozilla/javascript/xmlimpl/QName;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newQName(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)Lorg/mozilla/javascript/xmlimpl/QName;

    move-result-object p0

    return-object p0
.end method

.method public final newTextElementXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XML;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newTextElementXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    return-object p0
.end method

.method public final newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    return-object p0
.end method

.method public final newXMLFromJs(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXMLFromJs(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    return-object p0
.end method

.method public final newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXMLList()Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p0

    return-object p0
.end method

.method public final newXMLListFrom(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLList;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->newXMLListFrom(Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLList;

    move-result-object p0

    return-object p0
.end method

.method public abstract normalize()V
.end method

.method public abstract parent()Ljava/lang/Object;
.end method

.method public abstract processingInstructions(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XMLList;
.end method

.method public abstract propertyIsEnumerable(Ljava/lang/Object;)Z
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    .line 6
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p2, p1}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameFromString(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->putXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V

    return-void
.end method

.method public final put(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->lib:Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XMLLibImpl;->toXMLNameOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/xmlimpl/XMLName;

    move-result-object p2

    if-nez p2, :cond_1

    .line 3
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastUint32Result(Lorg/mozilla/javascript/Context;)J

    move-result-wide p1

    long-to-int p1, p1

    .line 4
    invoke-virtual {p0, p1, p0, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->putXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract putXMLProperty(Lorg/mozilla/javascript/xmlimpl/XMLName;Ljava/lang/Object;)V
.end method

.method public final setParentScope(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method public final setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method public abstract text()Lorg/mozilla/javascript/xmlimpl/XMLList;
.end method

.method public abstract toSource(I)Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract toXMLString()Ljava/lang/String;
.end method

.method public abstract valueOf()Ljava/lang/Object;
.end method

.method public xmlFromNode(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;
    .locals 1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getXml()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLObjectImpl;->newXML(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->setXml(Lorg/mozilla/javascript/xmlimpl/XML;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getXml()Lorg/mozilla/javascript/xmlimpl/XML;

    move-result-object p0

    return-object p0
.end method
