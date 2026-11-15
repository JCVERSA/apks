.class public Lorg/mozilla/javascript/tools/debugger/c;
.super Ljavax/swing/JDialog;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/tools/debugger/c$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljavax/swing/JList;

.field public c:Lorg/mozilla/javascript/tools/debugger/SwingGui;

.field public d:Ljavax/swing/JButton;

.field public e:Ljavax/swing/JButton;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Ljava/lang/String;Z)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/c;->c:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    new-instance p2, Ljavax/swing/JButton;

    const-string v1, "Cancel"

    invoke-direct {p2, v1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/c;->e:Ljavax/swing/JButton;

    new-instance p2, Ljavax/swing/JButton;

    const-string v1, "Select"

    invoke-direct {p2, v1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/c;->d:Ljavax/swing/JButton;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/c;->e:Ljavax/swing/JButton;

    invoke-virtual {p2, p0}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/c;->d:Ljavax/swing/JButton;

    invoke-virtual {p2, p0}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/c;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object p2

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/c;->d:Ljavax/swing/JButton;

    invoke-virtual {p2, v1}, Ljavax/swing/JRootPane;->setDefaultButton(Ljavax/swing/JButton;)V

    new-instance p2, Ljavax/swing/JList;

    new-instance v1, Ljavax/swing/DefaultListModel;

    invoke-direct {v1}, Ljavax/swing/DefaultListModel;-><init>()V

    invoke-direct {p2, v1}, Ljavax/swing/JList;-><init>(Ljavax/swing/ListModel;)V

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/c;->b:Ljavax/swing/JList;

    invoke-virtual {p2}, Ljavax/swing/JList;->getModel()Ljavax/swing/ListModel;

    move-result-object p2

    check-cast p2, Ljavax/swing/DefaultListModel;

    invoke-virtual {p2}, Ljavax/swing/DefaultListModel;->clear()V

    iget-object p1, p1, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->functionNames()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {p2, v3}, Ljavax/swing/DefaultListModel;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/c;->b:Ljavax/swing/JList;

    invoke-virtual {p2, v1}, Ljavax/swing/JList;->setSelectedIndex(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/c;->d:Ljavax/swing/JButton;

    array-length p1, p1

    if-lez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    invoke-virtual {p2, p1}, Ljavax/swing/JButton;->setEnabled(Z)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/c;->b:Ljavax/swing/JList;

    invoke-virtual {p1, v0}, Ljavax/swing/JList;->setSelectionMode(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/c;->b:Ljavax/swing/JList;

    new-instance p2, Lorg/mozilla/javascript/tools/debugger/c$b;

    invoke-direct {p2, p0}, Lorg/mozilla/javascript/tools/debugger/c$b;-><init>(Lorg/mozilla/javascript/tools/debugger/c;)V

    invoke-virtual {p1, p2}, Ljavax/swing/JList;->addMouseListener(Ljava/awt/event/MouseListener;)V

    new-instance p1, Ljavax/swing/JScrollPane;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/c;->b:Ljavax/swing/JList;

    invoke-direct {p1, p2}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    new-instance p2, Ljava/awt/Dimension;

    const/16 v2, 0x140

    const/16 v3, 0xf0

    invoke-direct {p2, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p1, p2}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    new-instance p2, Ljava/awt/Dimension;

    const/16 v2, 0xfa

    const/16 v3, 0x50

    invoke-direct {p2, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p1, p2}, Ljavax/swing/JScrollPane;->setMinimumSize(Ljava/awt/Dimension;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljavax/swing/JScrollPane;->setAlignmentX(F)V

    new-instance p2, Ljavax/swing/JPanel;

    invoke-direct {p2}, Ljavax/swing/JPanel;-><init>()V

    new-instance v2, Ljavax/swing/BoxLayout;

    invoke-direct {v2, p2, v0}, Ljavax/swing/BoxLayout;-><init>(Ljava/awt/Container;I)V

    invoke-virtual {p2, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0, p3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/mozilla/javascript/tools/debugger/c;->b:Ljavax/swing/JList;

    invoke-virtual {v0, p3}, Ljavax/swing/JLabel;->setLabelFor(Ljava/awt/Component;)V

    invoke-virtual {p2, v0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance p3, Ljava/awt/Dimension;

    const/4 v0, 0x5

    invoke-direct {p3, v1, v0}, Ljava/awt/Dimension;-><init>(II)V

    invoke-static {p3}, Ljavax/swing/Box;->createRigidArea(Ljava/awt/Dimension;)Ljava/awt/Component;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {p2, p1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    const/16 p1, 0xa

    invoke-static {p1, p1, p1, p1}, Ljavax/swing/BorderFactory;->createEmptyBorder(IIII)Ljavax/swing/border/Border;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    new-instance p3, Ljavax/swing/JPanel;

    invoke-direct {p3}, Ljavax/swing/JPanel;-><init>()V

    new-instance v0, Ljavax/swing/BoxLayout;

    invoke-direct {v0, p3, v1}, Ljavax/swing/BoxLayout;-><init>(Ljava/awt/Container;I)V

    invoke-virtual {p3, v0}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    invoke-static {v1, p1, p1, p1}, Ljavax/swing/BorderFactory;->createEmptyBorder(IIII)Ljavax/swing/border/Border;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    invoke-static {}, Ljavax/swing/Box;->createHorizontalGlue()Ljava/awt/Component;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/c;->e:Ljavax/swing/JButton;

    invoke-virtual {p3, v0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p1, v1}, Ljava/awt/Dimension;-><init>(II)V

    invoke-static {v0}, Ljavax/swing/Box;->createRigidArea(Ljava/awt/Dimension;)Ljava/awt/Component;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/c;->d:Ljavax/swing/JButton;

    invoke-virtual {p3, p1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/c;->getContentPane()Ljava/awt/Container;

    move-result-object p1

    const-string v0, "Center"

    invoke-virtual {p1, p2, v0}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    const-string p2, "South"

    invoke-virtual {p1, p3, p2}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/c;->pack()V

    new-instance p1, Lorg/mozilla/javascript/tools/debugger/c$a;

    invoke-direct {p1, p0}, Lorg/mozilla/javascript/tools/debugger/c$a;-><init>(Lorg/mozilla/javascript/tools/debugger/c;)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/c;->addKeyListener(Ljava/awt/event/KeyListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/Component;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/c;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/c;->setLocationRelativeTo(Ljava/awt/Component;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/c;->setVisible(Z)V

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/c;->a:Ljava/lang/String;

    return-object p0
.end method
