.class public Lorg/mozilla/javascript/tools/debugger/a;
.super Ljavax/swing/JPanel;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field public a:Lorg/mozilla/javascript/tools/debugger/SwingGui;

.field public b:Ljavax/swing/JComboBox;

.field public c:Ljava/util/List;

.field public d:Ljavax/swing/JTabbedPane;

.field public e:Ljavax/swing/JTabbedPane;

.field public f:Lvw6;

.field public g:Lvw6;

.field public h:Luw6;

.field public i:Lqd3;

.field public j:Lod3;

.field public k:Ljavax/swing/JSplitPane;

.field public l:Z


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v5, p1

    invoke-direct/range {p0 .. p0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v5, v9, Lorg/mozilla/javascript/tools/debugger/a;->a:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lorg/mozilla/javascript/tools/debugger/a;->l:Z

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    new-instance v11, Ljavax/swing/JToolBar;

    invoke-direct {v11}, Ljavax/swing/JToolBar;-><init>()V

    const-string v1, "Variables"

    invoke-virtual {v11, v1}, Ljavax/swing/JToolBar;->setName(Ljava/lang/String;)V

    new-instance v1, Ljava/awt/GridLayout;

    invoke-direct {v1}, Ljava/awt/GridLayout;-><init>()V

    invoke-virtual {v11, v1}, Ljavax/swing/JToolBar;->setLayout(Ljava/awt/LayoutManager;)V

    invoke-virtual {v11, v0}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v12, Ljavax/swing/JPanel;

    invoke-direct {v12}, Ljavax/swing/JPanel;-><init>()V

    new-instance v1, Ljava/awt/GridLayout;

    invoke-direct {v1}, Ljava/awt/GridLayout;-><init>()V

    invoke-virtual {v12, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v13, Ljavax/swing/JPanel;

    invoke-direct {v13}, Ljavax/swing/JPanel;-><init>()V

    new-instance v1, Ljava/awt/GridLayout;

    invoke-direct {v1}, Ljava/awt/GridLayout;-><init>()V

    invoke-virtual {v13, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    invoke-virtual {v12, v11}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v1, Ljavax/swing/JLabel;

    const-string v2, "Context:"

    invoke-direct {v1, v2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljavax/swing/JComboBox;

    invoke-direct {v2}, Ljavax/swing/JComboBox;-><init>()V

    iput-object v2, v9, Lorg/mozilla/javascript/tools/debugger/a;->b:Ljavax/swing/JComboBox;

    invoke-virtual {v2, v10}, Ljavax/swing/JComboBox;->setLightWeightPopupEnabled(Z)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v9, Lorg/mozilla/javascript/tools/debugger/a;->c:Ljava/util/List;

    iget-object v2, v9, Lorg/mozilla/javascript/tools/debugger/a;->b:Ljavax/swing/JComboBox;

    invoke-virtual {v2}, Ljavax/swing/JComboBox;->getBorder()Ljavax/swing/border/Border;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setBorder(Ljavax/swing/border/Border;)V

    iget-object v2, v9, Lorg/mozilla/javascript/tools/debugger/a;->b:Ljavax/swing/JComboBox;

    invoke-virtual {v2, v9}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v2, v9, Lorg/mozilla/javascript/tools/debugger/a;->b:Ljavax/swing/JComboBox;

    const-string v3, "ContextSwitch"

    invoke-virtual {v2, v3}, Ljavax/swing/JComboBox;->setActionCommand(Ljava/lang/String;)V

    new-instance v2, Ljava/awt/GridBagLayout;

    invoke-direct {v2}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v0, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v3, Ljava/awt/GridBagConstraints;

    invoke-direct {v3}, Ljava/awt/GridBagConstraints;-><init>()V

    iget-object v4, v3, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    const/4 v6, 0x5

    iput v6, v4, Ljava/awt/Insets;->left:I

    const/16 v4, 0x11

    iput v4, v3, Ljava/awt/GridBagConstraints;->anchor:I

    iput v6, v3, Ljava/awt/GridBagConstraints;->ipadx:I

    invoke-virtual {v2, v1, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v1, Ljava/awt/GridBagConstraints;

    invoke-direct {v1}, Ljava/awt/GridBagConstraints;-><init>()V

    iput v10, v1, Ljava/awt/GridBagConstraints;->gridwidth:I

    const/4 v3, 0x2

    iput v3, v1, Ljava/awt/GridBagConstraints;->fill:I

    iput v4, v1, Ljava/awt/GridBagConstraints;->anchor:I

    iget-object v7, v9, Lorg/mozilla/javascript/tools/debugger/a;->b:Ljavax/swing/JComboBox;

    invoke-virtual {v2, v7, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    iget-object v7, v9, Lorg/mozilla/javascript/tools/debugger/a;->b:Ljavax/swing/JComboBox;

    invoke-virtual {v0, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v7, Ljavax/swing/JTabbedPane;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Ljavax/swing/JTabbedPane;-><init>(I)V

    iput-object v7, v9, Lorg/mozilla/javascript/tools/debugger/a;->d:Ljavax/swing/JTabbedPane;

    new-instance v14, Ljava/awt/Dimension;

    const/16 v15, 0x1f4

    const/16 v8, 0x12c

    invoke-direct {v14, v15, v8}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v7, v14}, Ljavax/swing/JTabbedPane;->setPreferredSize(Ljava/awt/Dimension;)V

    new-instance v7, Lvw6;

    new-instance v14, Lorg/mozilla/javascript/tools/debugger/d;

    invoke-direct {v14}, Lorg/mozilla/javascript/tools/debugger/d;-><init>()V

    invoke-direct {v7, v14}, Lvw6;-><init>(Lorg/mozilla/javascript/tools/debugger/d;)V

    iput-object v7, v9, Lorg/mozilla/javascript/tools/debugger/a;->f:Lvw6;

    new-instance v7, Ljavax/swing/JScrollPane;

    iget-object v14, v9, Lorg/mozilla/javascript/tools/debugger/a;->f:Lvw6;

    invoke-direct {v7, v14}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    invoke-virtual {v7}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v14

    new-instance v8, Ljava/awt/Dimension;

    invoke-direct {v8, v6, v3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v14, v8}, Ljavax/swing/JViewport;->setViewSize(Ljava/awt/Dimension;)V

    iget-object v3, v9, Lorg/mozilla/javascript/tools/debugger/a;->d:Ljavax/swing/JTabbedPane;

    const-string v6, "this"

    invoke-virtual {v3, v6, v7}, Ljavax/swing/JTabbedPane;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v3, Lvw6;

    new-instance v6, Lorg/mozilla/javascript/tools/debugger/d;

    invoke-direct {v6}, Lorg/mozilla/javascript/tools/debugger/d;-><init>()V

    invoke-direct {v3, v6}, Lvw6;-><init>(Lorg/mozilla/javascript/tools/debugger/d;)V

    iput-object v3, v9, Lorg/mozilla/javascript/tools/debugger/a;->g:Lvw6;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lvw6;->setAutoResizeMode(I)V

    iget-object v3, v9, Lorg/mozilla/javascript/tools/debugger/a;->g:Lvw6;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lvw6;->setPreferredSize(Ljava/awt/Dimension;)V

    new-instance v3, Ljavax/swing/JScrollPane;

    iget-object v7, v9, Lorg/mozilla/javascript/tools/debugger/a;->g:Lvw6;

    invoke-direct {v3, v7}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    iget-object v7, v9, Lorg/mozilla/javascript/tools/debugger/a;->d:Ljavax/swing/JTabbedPane;

    const-string v8, "Locals"

    invoke-virtual {v7, v8, v3}, Ljavax/swing/JTabbedPane;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    iput-wide v7, v1, Ljava/awt/GridBagConstraints;->weighty:D

    iput-wide v7, v1, Ljava/awt/GridBagConstraints;->weightx:D

    iput v10, v1, Ljava/awt/GridBagConstraints;->gridheight:I

    const/4 v3, 0x1

    iput v3, v1, Ljava/awt/GridBagConstraints;->fill:I

    iput v4, v1, Ljava/awt/GridBagConstraints;->anchor:I

    iget-object v4, v9, Lorg/mozilla/javascript/tools/debugger/a;->d:Ljavax/swing/JTabbedPane;

    invoke-virtual {v2, v4, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    iget-object v1, v9, Lorg/mozilla/javascript/tools/debugger/a;->d:Ljavax/swing/JTabbedPane;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v0, Lqd3;

    invoke-direct {v0, v5}, Lqd3;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    iput-object v0, v9, Lorg/mozilla/javascript/tools/debugger/a;->i:Lqd3;

    new-instance v0, Lod3;

    invoke-direct {v0, v5}, Lod3;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    iput-object v0, v9, Lorg/mozilla/javascript/tools/debugger/a;->j:Lod3;

    iget-object v0, v9, Lorg/mozilla/javascript/tools/debugger/a;->i:Lqd3;

    iget-object v0, v0, Lqd3;->a:Luw6;

    iput-object v0, v9, Lorg/mozilla/javascript/tools/debugger/a;->h:Luw6;

    new-instance v0, Ljavax/swing/JScrollPane;

    iget-object v1, v9, Lorg/mozilla/javascript/tools/debugger/a;->i:Lqd3;

    invoke-direct {v0, v1}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    new-instance v14, Ljavax/swing/JToolBar;

    invoke-direct {v14}, Ljavax/swing/JToolBar;-><init>()V

    const-string v1, "Evaluate"

    invoke-virtual {v14, v1}, Ljavax/swing/JToolBar;->setName(Ljava/lang/String;)V

    new-instance v2, Ljavax/swing/JTabbedPane;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Ljavax/swing/JTabbedPane;-><init>(I)V

    iput-object v2, v9, Lorg/mozilla/javascript/tools/debugger/a;->e:Ljavax/swing/JTabbedPane;

    const-string v4, "Watch"

    invoke-virtual {v2, v4, v0}, Ljavax/swing/JTabbedPane;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v0, v9, Lorg/mozilla/javascript/tools/debugger/a;->e:Ljavax/swing/JTabbedPane;

    new-instance v2, Ljavax/swing/JScrollPane;

    iget-object v4, v9, Lorg/mozilla/javascript/tools/debugger/a;->j:Lod3;

    invoke-direct {v2, v4}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JTabbedPane;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v0, v9, Lorg/mozilla/javascript/tools/debugger/a;->e:Ljavax/swing/JTabbedPane;

    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0x12c

    invoke-direct {v1, v15, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTabbedPane;->setPreferredSize(Ljava/awt/Dimension;)V

    new-instance v0, Ljava/awt/GridLayout;

    invoke-direct {v0}, Ljava/awt/GridLayout;-><init>()V

    invoke-virtual {v14, v0}, Ljavax/swing/JToolBar;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, v9, Lorg/mozilla/javascript/tools/debugger/a;->e:Ljavax/swing/JTabbedPane;

    invoke-virtual {v14, v0}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v13, v14}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v0, v9, Lorg/mozilla/javascript/tools/debugger/a;->i:Lqd3;

    invoke-virtual {v0, v6}, Lqd3;->setAutoResizeMode(I)V

    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0, v3, v12, v13}, Ljavax/swing/JSplitPane;-><init>(ILjava/awt/Component;Ljava/awt/Component;)V

    iput-object v0, v9, Lorg/mozilla/javascript/tools/debugger/a;->k:Ljavax/swing/JSplitPane;

    invoke-virtual {v0, v3}, Ljavax/swing/JSplitPane;->setOneTouchExpandable(Z)V

    iget-object v0, v9, Lorg/mozilla/javascript/tools/debugger/a;->k:Ljavax/swing/JSplitPane;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->setResizeWeight(Ljavax/swing/JSplitPane;D)V

    new-instance v0, Ljava/awt/BorderLayout;

    invoke-direct {v0}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v9, v0}, Lorg/mozilla/javascript/tools/debugger/a;->setLayout(Ljava/awt/LayoutManager;)V

    iget-object v0, v9, Lorg/mozilla/javascript/tools/debugger/a;->k:Ljavax/swing/JSplitPane;

    const-string v1, "Center"

    invoke-virtual {v9, v0, v1}, Lorg/mozilla/javascript/tools/debugger/a;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v15, v9, Lorg/mozilla/javascript/tools/debugger/a;->k:Ljavax/swing/JSplitPane;

    new-instance v8, Lorg/mozilla/javascript/tools/debugger/a$a;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object v3, v11

    move-object v4, v12

    move-object v6, v14

    move-object v7, v13

    move-object v10, v8

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Lorg/mozilla/javascript/tools/debugger/a$a;-><init>(Lorg/mozilla/javascript/tools/debugger/a;Ljavax/swing/JPanel;Ljavax/swing/JToolBar;Ljavax/swing/JPanel;Lorg/mozilla/javascript/tools/debugger/SwingGui;Ljavax/swing/JToolBar;Ljavax/swing/JPanel;Ljavax/swing/JSplitPane;)V

    new-instance v7, Lorg/mozilla/javascript/tools/debugger/a$b;

    move-object v0, v7

    move-object v4, v14

    move-object v5, v13

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/tools/debugger/a$b;-><init>(Lorg/mozilla/javascript/tools/debugger/a;Ljavax/swing/JPanel;Ljavax/swing/JToolBar;Ljavax/swing/JToolBar;Ljavax/swing/JPanel;Ljavax/swing/JSplitPane;)V

    invoke-virtual {v12, v7}, Ljavax/swing/JPanel;->addContainerListener(Ljava/awt/event/ContainerListener;)V

    invoke-virtual {v11, v10}, Ljavax/swing/JToolBar;->addComponentListener(Ljava/awt/event/ComponentListener;)V

    invoke-virtual {v14, v10}, Ljavax/swing/JToolBar;->addComponentListener(Ljava/awt/event/ComponentListener;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/mozilla/javascript/tools/debugger/a;->c(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/a;->l:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/a;->l:Z

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/a;->b:Ljavax/swing/JComboBox;

    invoke-virtual {v0, p1}, Ljavax/swing/JComboBox;->setEnabled(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/a;->f:Lvw6;

    invoke-virtual {v0, p1}, Lvw6;->setEnabled(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/a;->g:Lvw6;

    invoke-virtual {v0, p1}, Lvw6;->setEnabled(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/a;->i:Lqd3;

    invoke-virtual {v0, p1}, Lqd3;->setEnabled(Z)V

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/a;->j:Lod3;

    invoke-virtual {p0, p1}, Lod3;->setEnabled(Z)V

    return-void
.end method
