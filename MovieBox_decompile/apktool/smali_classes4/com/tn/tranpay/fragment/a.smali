.class public final synthetic Lcom/tn/tranpay/fragment/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/tn/tranpay/fragment/PayFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/tranpay/fragment/PayFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tn/tranpay/fragment/a;->a:Lcom/tn/tranpay/fragment/PayFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/a;->a:Lcom/tn/tranpay/fragment/PayFragment;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/tn/tranpay/fragment/PayFragment;->X(Lcom/tn/tranpay/fragment/PayFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
