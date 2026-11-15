.class public final synthetic Ly19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly19;->b:Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ly19;->b:Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/whatsappscan/ScanMainFragment;->Q(Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;)V

    return-void
.end method
