.class public final synthetic Lh57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/dialog/a;

.field public final synthetic c:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/dialog/a;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh57;->b:Lcom/transsion/widgetslib/dialog/a;

    iput-object p2, p0, Lh57;->c:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lh57;->b:Lcom/transsion/widgetslib/dialog/a;

    iget-object p0, p0, Lh57;->c:Landroid/content/DialogInterface$OnDismissListener;

    invoke-static {v0, p0, p1}, Lcom/transsion/widgetslib/dialog/a;->b(Lcom/transsion/widgetslib/dialog/a;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V

    return-void
.end method
