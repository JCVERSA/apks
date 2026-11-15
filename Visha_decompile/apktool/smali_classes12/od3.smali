.class public Lod3;
.super Ljavax/swing/JTextArea;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/KeyListener;
.implements Ljavax/swing/event/DocumentListener;


# instance fields
.field public a:Lorg/mozilla/javascript/tools/debugger/SwingGui;

.field public b:Ljava/util/List;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
    .locals 4

    invoke-direct {p0}, Ljavax/swing/JTextArea;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lod3;->c:I

    iput-object p1, p0, Lod3;->a:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lod3;->b:Ljava/util/List;

    invoke-virtual {p0}, Lod3;->getDocument()Ljavax/swing/text/Document;

    move-result-object p1

    invoke-interface {p1, p0}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    invoke-virtual {p0, p0}, Lod3;->addKeyListener(Ljava/awt/event/KeyListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lod3;->setLineWrap(Z)V

    new-instance v0, Ljava/awt/Font;

    const-string v1, "Label.font"

    invoke-static {v1}, Ljavax/swing/UIManager;->getFont(Ljava/lang/Object;)Ljava/awt/Font;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Font;->getSize()I

    move-result v1

    const/16 v2, 0xc

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v2, "Monospaced"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lod3;->setFont(Ljava/awt/Font;)V

    const-string v0, "% "

    invoke-virtual {p0, v0}, Lod3;->append(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/swing/text/Document;->getLength()I

    move-result p1

    iput p1, p0, Lod3;->d:I

    return-void
.end method
