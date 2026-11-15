.class public Lcom/transsion/widgetslib/dialog/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/b;->b()Lcom/transsion/widgetslib/dialog/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/dialog/b;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/b$a;->b:Lcom/transsion/widgetslib/dialog/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/b$a;->b:Lcom/transsion/widgetslib/dialog/b;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/b;->a(Lcom/transsion/widgetslib/dialog/b;)Lcom/transsion/widgetslib/view/OSLoadingView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/b$a;->b:Lcom/transsion/widgetslib/dialog/b;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/b;->a(Lcom/transsion/widgetslib/dialog/b;)Lcom/transsion/widgetslib/view/OSLoadingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    :cond_0
    return-void
.end method
