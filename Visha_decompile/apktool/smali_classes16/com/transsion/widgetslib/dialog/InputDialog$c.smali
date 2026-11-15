.class public Lcom/transsion/widgetslib/dialog/InputDialog$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/InputDialog;->m()Lcom/transsion/widgetslib/dialog/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/dialog/InputDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$c;->b:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$c;->b:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->n(Landroid/content/DialogInterface;)V

    return-void
.end method
