.class public final Lorg/mozilla/javascript/xmlimpl/XmlNode$a$b;
.super Lorg/mozilla/javascript/xmlimpl/XmlNode$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/xmlimpl/XmlNode$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/w3c/dom/Node;)Z
    .locals 0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
