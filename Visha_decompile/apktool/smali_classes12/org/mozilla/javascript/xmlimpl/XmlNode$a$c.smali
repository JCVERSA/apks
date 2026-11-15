.class public final Lorg/mozilla/javascript/xmlimpl/XmlNode$a$c;
.super Lorg/mozilla/javascript/xmlimpl/XmlNode$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/xmlimpl/XmlNode$a;->a(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XmlNode$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/mozilla/javascript/xmlimpl/XMLName;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/xmlimpl/XMLName;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$a$c;->e:Lorg/mozilla/javascript/xmlimpl/XMLName;

    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/w3c/dom/Node;)Z
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$a$c;->e:Lorg/mozilla/javascript/xmlimpl/XMLName;

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XMLName;->matchesLocalName(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
