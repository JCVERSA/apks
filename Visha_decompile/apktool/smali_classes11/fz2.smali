.class public final synthetic Lfz2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfz2;->b:Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lfz2;->b:Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->u(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
