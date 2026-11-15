.class public Lqd3;
.super Ljavax/swing/JTable;
.source "SourceFile"


# instance fields
.field public a:Luw6;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
    .locals 1

    new-instance v0, Luw6;

    invoke-direct {v0, p1}, Luw6;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    invoke-direct {p0, v0}, Ljavax/swing/JTable;-><init>(Ljavax/swing/table/TableModel;)V

    invoke-virtual {p0}, Lqd3;->getModel()Ljavax/swing/table/TableModel;

    move-result-object p1

    check-cast p1, Luw6;

    iput-object p1, p0, Lqd3;->a:Luw6;

    return-void
.end method
