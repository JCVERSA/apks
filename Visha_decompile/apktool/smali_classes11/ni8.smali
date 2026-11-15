.class public final synthetic Lni8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/promotion/PromotionDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/promotion/PromotionDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lni8;->b:Lcom/transsion/onlinevideo/promotion/PromotionDialog;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lni8;->b:Lcom/transsion/onlinevideo/promotion/PromotionDialog;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/promotion/PromotionDialog;->u(Lcom/transsion/onlinevideo/promotion/PromotionDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
