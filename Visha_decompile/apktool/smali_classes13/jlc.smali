.class public final synthetic Ljlc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/WhatsappPermissionActivity;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/WhatsappPermissionActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljlc;->b:Lcom/transsion/sniffer_load/WhatsappPermissionActivity;

    iput-boolean p2, p0, Ljlc;->c:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Ljlc;->b:Lcom/transsion/sniffer_load/WhatsappPermissionActivity;

    iget-boolean p0, p0, Ljlc;->c:Z

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/sniffer_load/WhatsappPermissionActivity;->p0(Lcom/transsion/sniffer_load/WhatsappPermissionActivity;ZLandroid/content/DialogInterface;I)V

    return-void
.end method
