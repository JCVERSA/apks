.class public Ljq3;
.super Ljavax/swing/JPanel;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/MouseListener;


# instance fields
.field public a:I

.field public b:Lorg/mozilla/javascript/tools/debugger/b;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/b;)V
    .locals 1

    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljq3;->a:I

    iput-object p1, p0, Ljq3;->b:Lorg/mozilla/javascript/tools/debugger/b;

    invoke-virtual {p0, p0}, Ljq3;->addMouseListener(Ljava/awt/event/MouseListener;)V

    invoke-virtual {p0}, Ljq3;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Ljq3;->b:Lorg/mozilla/javascript/tools/debugger/b;

    iget-object v0, v0, Lorg/mozilla/javascript/tools/debugger/b;->c:Lyr3;

    invoke-virtual {v0}, Lyr3;->getFont()Ljava/awt/Font;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljq3;->setFont(Ljava/awt/Font;)V

    invoke-virtual {p0, v1}, Ljq3;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/FontMetrics;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lyr3;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    const-string v3, "99"

    :cond_0
    new-instance v4, Ljava/awt/Dimension;

    invoke-direct {v4}, Ljava/awt/Dimension;-><init>()V

    invoke-virtual {v1, v3}, Ljava/awt/FontMetrics;->stringWidth(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    iput v1, v4, Ljava/awt/Dimension;->width:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x64

    iput v0, v4, Ljava/awt/Dimension;->height:I

    invoke-virtual {p0, v4}, Ljq3;->setPreferredSize(Ljava/awt/Dimension;)V

    invoke-virtual {p0, v4}, Ljq3;->setSize(Ljava/awt/Dimension;)V

    return-void
.end method
