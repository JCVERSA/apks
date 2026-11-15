.class public Llr3;
.super Ljavax/swing/JPopupMenu;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lyr3;)V
    .locals 2

    invoke-direct {p0}, Ljavax/swing/JPopupMenu;-><init>()V

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Set Breakpoint"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Llr3;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v0, p1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Clear Breakpoint"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Llr3;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v0, p1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Run"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Llr3;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v0, p1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-void
.end method
