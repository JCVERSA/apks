.class public final synthetic Lx05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/util/InputDialogInputManager;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/util/InputDialogInputManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx05;->b:Lcom/transsion/widgetslib/util/InputDialogInputManager;

    iput-object p2, p0, Lx05;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lx05;->b:Lcom/transsion/widgetslib/util/InputDialogInputManager;

    iget-object p0, p0, Lx05;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/transsion/widgetslib/util/InputDialogInputManager;->a(Lcom/transsion/widgetslib/util/InputDialogInputManager;Landroid/view/View;)V

    return-void
.end method
