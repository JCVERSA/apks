.class public abstract Lorg/mozilla/javascript/xmlimpl/XmlNode$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/xmlimpl/XmlNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# static fields
.field public static final a:Lorg/mozilla/javascript/xmlimpl/XmlNode$a;

.field public static final b:Lorg/mozilla/javascript/xmlimpl/XmlNode$a;

.field public static c:Lorg/mozilla/javascript/xmlimpl/XmlNode$a;

.field public static d:Lorg/mozilla/javascript/xmlimpl/XmlNode$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$a$a;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$a$a;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$a;->a:Lorg/mozilla/javascript/xmlimpl/XmlNode$a;

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$a$b;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$a$b;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$a;->b:Lorg/mozilla/javascript/xmlimpl/XmlNode$a;

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$a$d;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$a$d;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$a;->c:Lorg/mozilla/javascript/xmlimpl/XmlNode$a;

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$a$e;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$a$e;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$a;->d:Lorg/mozilla/javascript/xmlimpl/XmlNode$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/mozilla/javascript/xmlimpl/XMLName;)Lorg/mozilla/javascript/xmlimpl/XmlNode$a;
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$a$c;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$a$c;-><init>(Lorg/mozilla/javascript/xmlimpl/XMLName;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(Lorg/w3c/dom/Node;)Z
.end method
