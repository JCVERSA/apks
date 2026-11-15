.class public Lyr3;
.super Ljavax/swing/JTextArea;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Ljavax/swing/event/PopupMenuListener;
.implements Ljava/awt/event/KeyListener;
.implements Ljava/awt/event/MouseListener;


# instance fields
.field public a:Lorg/mozilla/javascript/tools/debugger/b;

.field public b:Llr3;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/b;)V
    .locals 3

    invoke-direct {p0}, Ljavax/swing/JTextArea;-><init>()V

    iput-object p1, p0, Lyr3;->a:Lorg/mozilla/javascript/tools/debugger/b;

    new-instance p1, Llr3;

    invoke-direct {p1, p0}, Llr3;-><init>(Lyr3;)V

    iput-object p1, p0, Lyr3;->b:Llr3;

    invoke-virtual {p1, p0}, Llr3;->addPopupMenuListener(Ljavax/swing/event/PopupMenuListener;)V

    invoke-virtual {p0, p0}, Lyr3;->addMouseListener(Ljava/awt/event/MouseListener;)V

    invoke-virtual {p0, p0}, Lyr3;->addKeyListener(Ljava/awt/event/KeyListener;)V

    new-instance p1, Ljava/awt/Font;

    const-string v0, "Label.font"

    invoke-static {v0}, Ljavax/swing/UIManager;->getFont(Ljava/lang/Object;)Ljava/awt/Font;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Font;->getSize()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "Monospaced"

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, v0}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, p1}, Lyr3;->setFont(Ljava/awt/Font;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    if-ltz p1, :cond_3

    :try_start_0
    invoke-virtual {p0, p1}, Lyr3;->getLineOfOffset(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lyr3;->modelToView(I)Ljava/awt/Rectangle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p1}, Lyr3;->select(II)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lyr3;->getLineStartOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lyr3;->modelToView(I)Ljava/awt/Rectangle;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_1

    move-object v1, v0

    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lyr3;->getParent()Ljava/awt/Container;

    move-result-object v0

    check-cast v0, Ljavax/swing/JViewport;

    invoke-virtual {v0}, Ljavax/swing/JViewport;->getViewRect()Ljava/awt/Rectangle;

    move-result-object v0

    iget v2, v0, Ljava/awt/Rectangle;->y:I

    iget v3, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v2, v3

    iget v3, v1, Ljava/awt/Rectangle;->y:I

    if-le v2, v3, :cond_2

    invoke-virtual {p0, p1, p1}, Lyr3;->select(II)V

    goto :goto_0

    :cond_2
    iget v2, v1, Ljava/awt/Rectangle;->y:I

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    iget v3, v1, Ljava/awt/Rectangle;->height:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    iput v2, v1, Ljava/awt/Rectangle;->y:I

    invoke-virtual {p0, v1}, Lyr3;->scrollRectToVisible(Ljava/awt/Rectangle;)V

    invoke-virtual {p0, p1, p1}, Lyr3;->select(II)V
    :try_end_2
    .catch Ljavax/swing/text/BadLocationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    invoke-virtual {p0, p1, p1}, Lyr3;->select(II)V

    :cond_3
    :goto_0
    return-void
.end method
