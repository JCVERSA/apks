.class public Lcom/transsion/widgetslib/dialog/InputDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/InputDialog;->t(Ljava/lang/CharSequence;Lcom/transsion/widgetslib/dialog/InputDialog$g;)Lcom/transsion/widgetslib/dialog/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/dialog/InputDialog$g;

.field public final synthetic c:Lcom/transsion/widgetslib/dialog/InputDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/InputDialog;Lcom/transsion/widgetslib/dialog/InputDialog$g;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$a;->c:Lcom/transsion/widgetslib/dialog/InputDialog;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog$a;->b:Lcom/transsion/widgetslib/dialog/InputDialog$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$a;->b:Lcom/transsion/widgetslib/dialog/InputDialog$g;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$a;->c:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->d(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$g;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
