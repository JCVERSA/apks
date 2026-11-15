.class public final synthetic Lya4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/gprating/GPRatingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/gprating/GPRatingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lya4;->b:Lcom/transsion/playercommon/gprating/GPRatingDialog;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lya4;->b:Lcom/transsion/playercommon/gprating/GPRatingDialog;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->u(Lcom/transsion/playercommon/gprating/GPRatingDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
