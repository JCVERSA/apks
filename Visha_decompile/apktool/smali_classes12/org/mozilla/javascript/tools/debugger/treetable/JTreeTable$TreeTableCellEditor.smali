.class public Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellEditor;
.super Lorg/mozilla/javascript/tools/debugger/treetable/AbstractCellEditor;
.source "SourceFile"

# interfaces
.implements Ljavax/swing/table/TableCellEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TreeTableCellEditor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellEditor;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/debugger/treetable/AbstractCellEditor;-><init>()V

    return-void
.end method


# virtual methods
.method public getTableCellEditorComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZII)Ljava/awt/Component;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellEditor;->this$0:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable;->tree:Lorg/mozilla/javascript/tools/debugger/treetable/JTreeTable$TreeTableCellRenderer;

    return-object p0
.end method

.method public isCellEditable(Ljava/util/EventObject;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
