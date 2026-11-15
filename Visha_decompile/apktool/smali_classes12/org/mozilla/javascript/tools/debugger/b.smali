.class public Lorg/mozilla/javascript/tools/debugger/b;
.super Ljavax/swing/JInternalFrame;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field public a:Lorg/mozilla/javascript/tools/debugger/SwingGui;

.field public b:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

.field public c:Lyr3;

.field public d:Ljq3;

.field public e:Ljavax/swing/JScrollPane;

.field public f:I


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V
    .locals 7

    invoke-virtual {p2}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljavax/swing/JInternalFrame;-><init>(Ljava/lang/String;ZZZZ)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/b;->a:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/b;->b:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/b;->e()V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/tools/debugger/b;->f:I

    new-instance p1, Lyr3;

    invoke-direct {p1, p0}, Lyr3;-><init>(Lorg/mozilla/javascript/tools/debugger/b;)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/b;->c:Lyr3;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lyr3;->setRows(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/b;->c:Lyr3;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lyr3;->setColumns(I)V

    new-instance p1, Ljavax/swing/JScrollPane;

    invoke-direct {p1}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/b;->e:Ljavax/swing/JScrollPane;

    new-instance p1, Ljq3;

    invoke-direct {p1, p0}, Ljq3;-><init>(Lorg/mozilla/javascript/tools/debugger/b;)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/b;->d:Ljq3;

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/b;->e:Ljavax/swing/JScrollPane;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/b;->c:Lyr3;

    invoke-virtual {p1, v0}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/b;->e:Ljavax/swing/JScrollPane;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/b;->d:Ljq3;

    invoke-virtual {p1, v0}, Ljavax/swing/JScrollPane;->setRowHeaderView(Ljava/awt/Component;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/b;->e:Ljavax/swing/JScrollPane;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/b;->setContentPane(Ljava/awt/Container;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/b;->pack()V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/tools/debugger/b;->d(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/b;->c:Lyr3;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lyr3;->a(I)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/b;->c:Lyr3;

    invoke-virtual {p0, p1}, Lyr3;->getLineStartOffset(I)I

    move-result p0
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/b;->b:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->url()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/b;->c:Lyr3;

    invoke-virtual {v0, p1}, Lyr3;->a(I)V

    iput p1, p0, Lorg/mozilla/javascript/tools/debugger/b;->f:I

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/b;->d:Ljq3;

    invoke-virtual {p0}, Ljq3;->repaint()V

    return-void
.end method

.method public d(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V
    .locals 1

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/b;->b:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->source()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/b;->c:Lyr3;

    invoke-virtual {v0}, Lyr3;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/b;->c:Lyr3;

    invoke-virtual {v0, p1}, Lyr3;->setText(Ljava/lang/String;)V

    iget p1, p0, Lorg/mozilla/javascript/tools/debugger/b;->f:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/b;->c:Lyr3;

    invoke-virtual {v0, p1}, Lyr3;->a(I)V

    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/b;->d:Ljq3;

    invoke-virtual {p1}, Ljq3;->a()V

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/b;->d:Ljq3;

    invoke-virtual {p0}, Ljq3;->repaint()V

    return-void
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/b;->getComponentCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    return-void

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/tools/debugger/b;->getComponent(I)Ljava/awt/Component;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Ljavax/swing/JComponent;

    if-eqz v1, :cond_2

    check-cast v0, Ljavax/swing/JComponent;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/swing/JComponent;->setToolTipText(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
