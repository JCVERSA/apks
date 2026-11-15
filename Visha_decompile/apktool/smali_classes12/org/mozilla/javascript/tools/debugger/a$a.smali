.class public Lorg/mozilla/javascript/tools/debugger/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ComponentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/tools/debugger/a;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ljavax/swing/JPanel;

.field public final synthetic c:Ljavax/swing/JToolBar;

.field public final synthetic d:Ljavax/swing/JPanel;

.field public final synthetic e:Lorg/mozilla/javascript/tools/debugger/SwingGui;

.field public final synthetic f:Ljavax/swing/JToolBar;

.field public final synthetic g:Ljavax/swing/JPanel;

.field public final synthetic h:Ljavax/swing/JSplitPane;

.field public final synthetic i:Lorg/mozilla/javascript/tools/debugger/a;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/a;Ljavax/swing/JPanel;Ljavax/swing/JToolBar;Ljavax/swing/JPanel;Lorg/mozilla/javascript/tools/debugger/SwingGui;Ljavax/swing/JToolBar;Ljavax/swing/JPanel;Ljavax/swing/JSplitPane;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/a$a;->i:Lorg/mozilla/javascript/tools/debugger/a;

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/a$a;->b:Ljavax/swing/JPanel;

    iput-object p3, p0, Lorg/mozilla/javascript/tools/debugger/a$a;->c:Ljavax/swing/JToolBar;

    iput-object p4, p0, Lorg/mozilla/javascript/tools/debugger/a$a;->d:Ljavax/swing/JPanel;

    iput-object p5, p0, Lorg/mozilla/javascript/tools/debugger/a$a;->e:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    iput-object p6, p0, Lorg/mozilla/javascript/tools/debugger/a$a;->f:Ljavax/swing/JToolBar;

    iput-object p7, p0, Lorg/mozilla/javascript/tools/debugger/a$a;->g:Ljavax/swing/JPanel;

    iput-object p8, p0, Lorg/mozilla/javascript/tools/debugger/a$a;->h:Ljavax/swing/JSplitPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/javascript/tools/debugger/a$a;->a:Z

    return-void
.end method
