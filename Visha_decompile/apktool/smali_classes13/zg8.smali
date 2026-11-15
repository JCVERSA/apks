.class public final synthetic Lzg8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/PrivateRoomWarningFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/PrivateRoomWarningFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzg8;->b:Lcom/transsion/tools/fragments/PrivateRoomWarningFragment;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lzg8;->b:Lcom/transsion/tools/fragments/PrivateRoomWarningFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/tools/fragments/PrivateRoomWarningFragment;->u(Lcom/transsion/tools/fragments/PrivateRoomWarningFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
