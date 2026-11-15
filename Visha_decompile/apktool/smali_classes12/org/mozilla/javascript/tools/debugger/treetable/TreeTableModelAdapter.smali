.class public Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;
.super Ljavax/swing/table/AbstractTableModel;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0xad29c9163d0edcL


# instance fields
.field tree:Ljavax/swing/JTree;

.field treeTableModel:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;Ljavax/swing/JTree;)V
    .locals 1

    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->tree:Ljavax/swing/JTree;

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->treeTableModel:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$a;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$a;-><init>(Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;)V

    invoke-virtual {p2, v0}, Ljavax/swing/JTree;->addTreeExpansionListener(Ljavax/swing/event/TreeExpansionListener;)V

    new-instance p2, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$b;

    invoke-direct {p2, p0}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$b;-><init>(Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;)V

    invoke-interface {p1, p2}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;->addTreeModelListener(Ljavax/swing/event/TreeModelListener;)V

    return-void
.end method


# virtual methods
.method public delayedFireTableDataChanged()V
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$3;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter$3;-><init>(Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getColumnClass(I)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->treeTableModel:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;

    invoke-interface {p0, p1}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;->getColumnClass(I)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getColumnCount()I
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->treeTableModel:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;

    invoke-interface {p0}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;->getColumnCount()I

    move-result p0

    return p0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->treeTableModel:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;

    invoke-interface {p0, p1}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;->getColumnName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRowCount()I
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->tree:Ljavax/swing/JTree;

    invoke-virtual {p0}, Ljavax/swing/JTree;->getRowCount()I

    move-result p0

    return p0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->treeTableModel:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->nodeForRow(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;->getValueAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isCellEditable(II)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->treeTableModel:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->nodeForRow(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;->isCellEditable(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public nodeForRow(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->tree:Ljavax/swing/JTree;

    invoke-virtual {p0, p1}, Ljavax/swing/JTree;->getPathForRow(I)Ljavax/swing/tree/TreePath;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setValueAt(Ljava/lang/Object;II)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->treeTableModel:Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModelAdapter;->nodeForRow(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p1, p0, p3}, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;->setValueAt(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method
