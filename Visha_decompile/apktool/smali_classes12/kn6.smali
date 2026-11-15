.class public Lkn6;
.super Ljavax/swing/JMenuBar;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;

.field public c:Lorg/mozilla/javascript/tools/debugger/SwingGui;

.field public d:Ljavax/swing/JMenu;

.field public e:Ljavax/swing/JCheckBoxMenuItem;

.field public f:Ljavax/swing/JCheckBoxMenuItem;

.field public g:Ljavax/swing/JCheckBoxMenuItem;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
    .locals 22

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljavax/swing/JMenuBar;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lkn6;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lkn6;->b:Ljava/util/List;

    move-object/from16 v1, p1

    iput-object v1, v0, Lkn6;->c:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    const-string v1, "Open..."

    const-string v2, "Run..."

    const-string v3, ""

    const-string v4, "Exit"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "Open"

    const-string v5, "Load"

    filled-new-array {v2, v5, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4e

    const/4 v4, 0x0

    const/4 v6, 0x4

    new-array v7, v6, [C

    fill-array-data v7, :array_0

    const/16 v8, 0x51

    const/16 v9, 0x4f

    filled-new-array {v9, v3, v4, v8}, [I

    move-result-object v3

    const-string v8, "Go to function..."

    const-string v9, "Go to line..."

    const-string v10, "Cut"

    const-string v11, "Copy"

    const-string v12, "Paste"

    filled-new-array {v10, v11, v12, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const/16 v12, 0x46

    const/16 v13, 0x4c

    const/4 v14, 0x5

    new-array v15, v14, [C

    fill-array-data v15, :array_1

    filled-new-array {v4, v4, v4, v4, v13}, [I

    move-result-object v13

    const-string v10, "Step Over"

    const-string v9, "Step Out"

    const-string v5, "Break"

    const-string v4, "Go"

    const-string v6, "Step Into"

    filled-new-array {v5, v4, v6, v10, v9}, [Ljava/lang/String;

    move-result-object v4

    new-array v5, v14, [C

    fill-array-data v5, :array_2

    const-string v6, "Windows"

    const-string v9, "Motif"

    const-string v10, "Metal"

    filled-new-array {v10, v6, v9}, [Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x3

    new-array v14, v10, [C

    fill-array-data v14, :array_3

    const/4 v10, 0x7

    new-array v10, v10, [I

    fill-array-data v10, :array_4

    new-instance v9, Ljavax/swing/JMenu;

    const-string v11, "File"

    invoke-direct {v9, v11}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljavax/swing/JMenu;->setMnemonic(C)V

    new-instance v11, Ljavax/swing/JMenu;

    const-string v12, "Edit"

    invoke-direct {v11, v12}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x45

    invoke-virtual {v11, v12}, Ljavax/swing/JMenu;->setMnemonic(C)V

    new-instance v12, Ljavax/swing/JMenu;

    move-object/from16 v18, v10

    const-string v10, "Platform"

    invoke-direct {v12, v10}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x50

    invoke-virtual {v12, v10}, Ljavax/swing/JMenu;->setMnemonic(C)V

    new-instance v10, Ljavax/swing/JMenu;

    move-object/from16 v17, v5

    const-string v5, "Debug"

    invoke-direct {v10, v5}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x44

    invoke-virtual {v10, v5}, Ljavax/swing/JMenu;->setMnemonic(C)V

    new-instance v5, Ljavax/swing/JMenu;

    move-object/from16 v19, v10

    const-string v10, "Window"

    invoke-direct {v5, v10}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    iput-object v5, v0, Lkn6;->d:Ljavax/swing/JMenu;

    const/16 v10, 0x57

    invoke-virtual {v5, v10}, Ljavax/swing/JMenu;->setMnemonic(C)V

    const/4 v5, 0x0

    :goto_0
    const/4 v10, 0x4

    if-ge v5, v10, :cond_2

    aget-object v16, v1, v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_0

    invoke-virtual {v9}, Ljavax/swing/JMenu;->addSeparator()V

    move-object/from16 v21, v1

    move-object/from16 v20, v4

    goto :goto_1

    :cond_0
    new-instance v10, Ljavax/swing/JMenuItem;

    move-object/from16 v20, v4

    aget-object v4, v1, v5

    move-object/from16 v21, v1

    aget-char v1, v7, v5

    invoke-direct {v10, v4, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    aget-object v1, v2, v5

    invoke-virtual {v10, v1}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v9, v10}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    aget v1, v3, v5

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v20

    move-object/from16 v1, v21

    goto :goto_0

    :cond_2
    move-object/from16 v20, v4

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    new-instance v2, Ljavax/swing/JMenuItem;

    aget-object v3, v8, v1

    aget-char v4, v15, v1

    invoke-direct {v2, v3, v4}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v11, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    aget v3, v13, v1

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-static {v3, v4}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x3

    :goto_3
    if-ge v1, v2, :cond_5

    new-instance v3, Ljavax/swing/JMenuItem;

    aget-object v4, v6, v1

    aget-char v5, v14, v1

    invoke-direct {v3, v4, v5}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v12, v3}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x5

    :goto_4
    if-ge v1, v2, :cond_8

    new-instance v3, Ljavax/swing/JMenuItem;

    aget-object v4, v20, v1

    aget-char v5, v17, v1

    invoke-direct {v3, v4, v5}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    aget v4, v18, v1

    if-eqz v4, :cond_6

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    :cond_6
    if-eqz v1, :cond_7

    iget-object v4, v0, Lkn6;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    move-object/from16 v4, v19

    goto :goto_6

    :cond_7
    iget-object v4, v0, Lkn6;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :goto_6
    invoke-virtual {v4, v3}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v19, v4

    goto :goto_4

    :cond_8
    move-object/from16 v4, v19

    new-instance v1, Ljavax/swing/JCheckBoxMenuItem;

    const-string v2, "Break on Exceptions"

    invoke-direct {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lkn6;->e:Ljavax/swing/JCheckBoxMenuItem;

    const/16 v2, 0x58

    invoke-virtual {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;->setMnemonic(C)V

    iget-object v1, v0, Lkn6;->e:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v1, v0}, Ljavax/swing/JCheckBoxMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v1, v0, Lkn6;->e:Ljavax/swing/JCheckBoxMenuItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    iget-object v1, v0, Lkn6;->e:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v4, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    new-instance v1, Ljavax/swing/JCheckBoxMenuItem;

    const-string v3, "Break on Function Enter"

    invoke-direct {v1, v3}, Ljavax/swing/JCheckBoxMenuItem;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lkn6;->f:Ljavax/swing/JCheckBoxMenuItem;

    const/16 v3, 0x45

    invoke-virtual {v1, v3}, Ljavax/swing/JCheckBoxMenuItem;->setMnemonic(C)V

    iget-object v1, v0, Lkn6;->f:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v1, v0}, Ljavax/swing/JCheckBoxMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v1, v0, Lkn6;->f:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    iget-object v1, v0, Lkn6;->f:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v4, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    new-instance v1, Ljavax/swing/JCheckBoxMenuItem;

    const-string v2, "Break on Function Return"

    invoke-direct {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lkn6;->g:Ljavax/swing/JCheckBoxMenuItem;

    const/16 v2, 0x52

    invoke-virtual {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;->setMnemonic(C)V

    iget-object v1, v0, Lkn6;->g:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v1, v0}, Ljavax/swing/JCheckBoxMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v1, v0, Lkn6;->g:Ljavax/swing/JCheckBoxMenuItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    iget-object v1, v0, Lkn6;->g:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v4, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v9}, Lkn6;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    invoke-virtual {v0, v11}, Lkn6;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    invoke-virtual {v0, v4}, Lkn6;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    iget-object v1, v0, Lkn6;->d:Ljavax/swing/JMenu;

    new-instance v2, Ljavax/swing/JMenuItem;

    const-string v3, "Cascade"

    const/16 v4, 0x41

    invoke-direct {v2, v3, v4}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v2, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v1, v0, Lkn6;->d:Ljavax/swing/JMenu;

    new-instance v2, Ljavax/swing/JMenuItem;

    const-string v3, "Tile"

    const/16 v4, 0x54

    invoke-direct {v2, v3, v4}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v2, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v1, v0, Lkn6;->d:Ljavax/swing/JMenu;

    invoke-virtual {v1}, Ljavax/swing/JMenu;->addSeparator()V

    iget-object v1, v0, Lkn6;->d:Ljavax/swing/JMenu;

    new-instance v2, Ljavax/swing/JMenuItem;

    const-string v3, "Console"

    const/16 v4, 0x43

    invoke-direct {v2, v3, v4}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v2, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v1, v0, Lkn6;->d:Ljavax/swing/JMenu;

    invoke-virtual {v0, v1}, Lkn6;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkn6;->e(Z)V

    return-void

    :array_0
    .array-data 2
        0x30s
        0x4es
        0x0s
        0x58s
    .end array-data

    :array_1
    .array-data 2
        0x54s
        0x43s
        0x50s
        0x46s
        0x4cs
    .end array-data

    nop

    :array_2
    .array-data 2
        0x42s
        0x47s
        0x49s
        0x4fs
        0x54s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x4ds
        0x57s
        0x46s
    .end array-data

    nop

    :array_4
    .array-data 4
        0x13
        0x74
        0x7a
        0x76
        0x77
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lkn6;->d:Ljavax/swing/JMenu;

    invoke-virtual {v0}, Ljavax/swing/JMenu;->getItemCount()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lkn6;->d:Ljavax/swing/JMenu;

    invoke-virtual {v1}, Ljavax/swing/JMenu;->addSeparator()V

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, Lkn6;->d:Ljavax/swing/JMenu;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljavax/swing/JMenu;->getItem(I)Ljavax/swing/JMenuItem;

    move-result-object v1

    const/4 v2, 0x5

    const-string v3, "More Windows..."

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/swing/JMenuItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    const/4 v5, 0x6

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move v5, v2

    :goto_0
    if-nez v4, :cond_2

    add-int/lit8 v6, v0, -0x4

    if-ne v6, v2, :cond_2

    iget-object p1, p0, Lkn6;->d:Ljavax/swing/JMenu;

    new-instance v0, Ljavax/swing/JMenuItem;

    const/16 v1, 0x4d

    invoke-direct {v0, v3, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v3}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-void

    :cond_2
    add-int/lit8 v2, v0, -0x4

    if-gt v2, v5, :cond_5

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lkn6;->d:Ljavax/swing/JMenu;

    invoke-virtual {v2, v1}, Ljavax/swing/JMenu;->remove(Ljavax/swing/JMenuItem;)V

    :cond_3
    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lkn6;->d:Ljavax/swing/JMenu;

    new-instance v5, Ljavax/swing/JMenuItem;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x2c

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v0}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    if-eqz v4, :cond_4

    iget-object v0, p0, Lkn6;->d:Ljavax/swing/JMenu;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    :cond_4
    invoke-virtual {v5, p1}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    :cond_5
    return-void
.end method

.method public b()Ljavax/swing/JCheckBoxMenuItem;
    .locals 0

    iget-object p0, p0, Lkn6;->f:Ljavax/swing/JCheckBoxMenuItem;

    return-object p0
.end method

.method public c()Ljavax/swing/JCheckBoxMenuItem;
    .locals 0

    iget-object p0, p0, Lkn6;->e:Ljavax/swing/JCheckBoxMenuItem;

    return-object p0
.end method

.method public d()Ljavax/swing/JCheckBoxMenuItem;
    .locals 0

    iget-object p0, p0, Lkn6;->g:Ljavax/swing/JCheckBoxMenuItem;

    return-object p0
.end method

.method public e(Z)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lkn6;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lkn6;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/swing/JMenuItem;

    invoke-virtual {v2, p1}, Ljavax/swing/JMenuItem;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lkn6;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lkn6;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/swing/JMenuItem;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljavax/swing/JMenuItem;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
