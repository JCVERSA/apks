.class public Lc65;
.super Ljavax/swing/JInternalFrame;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field public a:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljavax/swing/JInternalFrame;-><init>(Ljava/lang/String;ZZZZ)V

    new-instance p1, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lc65;->a:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->setRows(I)V

    iget-object p1, p0, Lc65;->a:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->setColumns(I)V

    new-instance p1, Ljavax/swing/JScrollPane;

    iget-object v0, p0, Lc65;->a:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-direct {p1, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    invoke-virtual {p0, p1}, Lc65;->setContentPane(Ljava/awt/Container;)V

    invoke-virtual {p0}, Lc65;->pack()V

    new-instance p1, Lc65$a;

    invoke-direct {p1, p0}, Lc65$a;-><init>(Lc65;)V

    invoke-virtual {p0, p1}, Lc65;->addInternalFrameListener(Ljavax/swing/event/InternalFrameListener;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/PrintStream;
    .locals 0

    iget-object p0, p0, Lc65;->a:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getErr()Ljava/io/PrintStream;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lc65;->a:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getIn()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/io/PrintStream;
    .locals 0

    iget-object p0, p0, Lc65;->a:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getOut()Ljava/io/PrintStream;

    move-result-object p0

    return-object p0
.end method
