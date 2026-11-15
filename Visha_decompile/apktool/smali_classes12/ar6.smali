.class public Lar6;
.super Ljavax/swing/JDialog;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar6$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljavax/swing/JList;

.field public c:Lorg/mozilla/javascript/tools/debugger/SwingGui;

.field public d:Ljavax/swing/JButton;

.field public e:Ljavax/swing/JButton;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Ljava/lang/String;Z)V

    iput-object p1, p0, Lar6;->c:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    new-instance p1, Ljavax/swing/JButton;

    const-string p3, "Cancel"

    invoke-direct {p1, p3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lar6;->e:Ljavax/swing/JButton;

    new-instance p1, Ljavax/swing/JButton;

    const-string p3, "Select"

    invoke-direct {p1, p3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lar6;->d:Ljavax/swing/JButton;

    iget-object p1, p0, Lar6;->e:Ljavax/swing/JButton;

    invoke-virtual {p1, p0}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object p1, p0, Lar6;->d:Ljavax/swing/JButton;

    invoke-virtual {p1, p0}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {p0}, Lar6;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object p1

    iget-object p3, p0, Lar6;->d:Ljavax/swing/JButton;

    invoke-virtual {p1, p3}, Ljavax/swing/JRootPane;->setDefaultButton(Ljavax/swing/JButton;)V

    new-instance p1, Ljavax/swing/JList;

    new-instance p3, Ljavax/swing/DefaultListModel;

    invoke-direct {p3}, Ljavax/swing/DefaultListModel;-><init>()V

    invoke-direct {p1, p3}, Ljavax/swing/JList;-><init>(Ljavax/swing/ListModel;)V

    iput-object p1, p0, Lar6;->b:Ljavax/swing/JList;

    invoke-virtual {p1}, Ljavax/swing/JList;->getModel()Ljavax/swing/ListModel;

    move-result-object p1

    check-cast p1, Ljavax/swing/DefaultListModel;

    invoke-virtual {p1}, Ljavax/swing/DefaultListModel;->clear()V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljavax/swing/DefaultListModel;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lar6;->b:Ljavax/swing/JList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljavax/swing/JList;->setSelectedIndex(I)V

    iget-object p1, p0, Lar6;->d:Ljavax/swing/JButton;

    invoke-virtual {p1, v0}, Ljavax/swing/JButton;->setEnabled(Z)V

    iget-object p1, p0, Lar6;->b:Ljavax/swing/JList;

    invoke-virtual {p1, v0}, Ljavax/swing/JList;->setSelectionMode(I)V

    iget-object p1, p0, Lar6;->b:Ljavax/swing/JList;

    new-instance p3, Lar6$b;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lar6$b;-><init>(Lar6;Lar6$a;)V

    invoke-virtual {p1, p3}, Ljavax/swing/JList;->addMouseListener(Ljava/awt/event/MouseListener;)V

    new-instance p1, Ljavax/swing/JScrollPane;

    iget-object p3, p0, Lar6;->b:Ljavax/swing/JList;

    invoke-direct {p1, p3}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    new-instance p3, Ljava/awt/Dimension;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    invoke-direct {p3, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p1, p3}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    new-instance p3, Ljava/awt/Dimension;

    const/16 v1, 0xfa

    const/16 v2, 0x50

    invoke-direct {p3, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p1, p3}, Ljavax/swing/JScrollPane;->setMinimumSize(Ljava/awt/Dimension;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljavax/swing/JScrollPane;->setAlignmentX(F)V

    new-instance p3, Ljavax/swing/JPanel;

    invoke-direct {p3}, Ljavax/swing/JPanel;-><init>()V

    new-instance v1, Ljavax/swing/BoxLayout;

    invoke-direct {v1, p3, v0}, Ljavax/swing/BoxLayout;-><init>(Ljava/awt/Container;I)V

    invoke-virtual {p3, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0, p4}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lar6;->b:Ljavax/swing/JList;

    invoke-virtual {v0, p4}, Ljavax/swing/JLabel;->setLabelFor(Ljava/awt/Component;)V

    invoke-virtual {p3, v0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance p4, Ljava/awt/Dimension;

    const/4 v0, 0x5

    invoke-direct {p4, p2, v0}, Ljava/awt/Dimension;-><init>(II)V

    invoke-static {p4}, Ljavax/swing/Box;->createRigidArea(Ljava/awt/Dimension;)Ljava/awt/Component;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {p3, p1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    const/16 p1, 0xa

    invoke-static {p1, p1, p1, p1}, Ljavax/swing/BorderFactory;->createEmptyBorder(IIII)Ljavax/swing/border/Border;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    new-instance p4, Ljavax/swing/JPanel;

    invoke-direct {p4}, Ljavax/swing/JPanel;-><init>()V

    new-instance v0, Ljavax/swing/BoxLayout;

    invoke-direct {v0, p4, p2}, Ljavax/swing/BoxLayout;-><init>(Ljava/awt/Container;I)V

    invoke-virtual {p4, v0}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    invoke-static {p2, p1, p1, p1}, Ljavax/swing/BorderFactory;->createEmptyBorder(IIII)Ljavax/swing/border/Border;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    invoke-static {}, Ljavax/swing/Box;->createHorizontalGlue()Ljava/awt/Component;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v0, p0, Lar6;->e:Ljavax/swing/JButton;

    invoke-virtual {p4, v0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p1, p2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-static {v0}, Ljavax/swing/Box;->createRigidArea(Ljava/awt/Dimension;)Ljava/awt/Component;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object p1, p0, Lar6;->d:Ljavax/swing/JButton;

    invoke-virtual {p4, p1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {p0}, Lar6;->getContentPane()Ljava/awt/Container;

    move-result-object p1

    const-string p2, "Center"

    invoke-virtual {p1, p3, p2}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    const-string p2, "South"

    invoke-virtual {p1, p4, p2}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lar6;->pack()V

    new-instance p1, Lar6$a;

    invoke-direct {p1, p0}, Lar6$a;-><init>(Lar6;)V

    invoke-virtual {p0, p1}, Lar6;->addKeyListener(Ljava/awt/event/KeyListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/Component;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lar6;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lar6;->setLocationRelativeTo(Ljava/awt/Component;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lar6;->setVisible(Z)V

    iget-object p0, p0, Lar6;->a:Ljava/lang/String;

    return-object p0
.end method
