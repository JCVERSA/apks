.class public Lorg/mozilla/javascript/tools/debugger/treetable/AbstractCellEditor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/swing/CellEditor;


# instance fields
.field protected listenerList:Ljavax/swing/event/EventListenerList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/swing/event/EventListenerList;

    invoke-direct {v0}, Ljavax/swing/event/EventListenerList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/AbstractCellEditor;->listenerList:Ljavax/swing/event/EventListenerList;

    return-void
.end method


# virtual methods
.method public addCellEditorListener(Ljavax/swing/event/CellEditorListener;)V
    .locals 1

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/AbstractCellEditor;->listenerList:Ljavax/swing/event/EventListenerList;

    const-class v0, Ljavax/swing/event/CellEditorListener;

    invoke-virtual {p0, v0, p1}, Ljavax/swing/event/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public cancelCellEditing()V
    .locals 0

    return-void
.end method

.method public fireEditingCanceled()V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/AbstractCellEditor;->listenerList:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v0}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    const-class v3, Ljavax/swing/event/CellEditorListener;

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljavax/swing/event/CellEditorListener;

    new-instance v3, Ljavax/swing/event/ChangeEvent;

    invoke-direct {v3, p0}, Ljavax/swing/event/ChangeEvent;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljavax/swing/event/CellEditorListener;->editingCanceled(Ljavax/swing/event/ChangeEvent;)V

    :cond_0
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fireEditingStopped()V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/AbstractCellEditor;->listenerList:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v0}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    const-class v3, Ljavax/swing/event/CellEditorListener;

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljavax/swing/event/CellEditorListener;

    new-instance v3, Ljavax/swing/event/ChangeEvent;

    invoke-direct {v3, p0}, Ljavax/swing/event/ChangeEvent;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljavax/swing/event/CellEditorListener;->editingStopped(Ljavax/swing/event/ChangeEvent;)V

    :cond_0
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCellEditorValue()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isCellEditable(Ljava/util/EventObject;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public removeCellEditorListener(Ljavax/swing/event/CellEditorListener;)V
    .locals 1

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/AbstractCellEditor;->listenerList:Ljavax/swing/event/EventListenerList;

    const-class v0, Ljavax/swing/event/CellEditorListener;

    invoke-virtual {p0, v0, p1}, Ljavax/swing/event/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public shouldSelectCell(Ljava/util/EventObject;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public stopCellEditing()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
