.class public final synthetic Lcom/transsion/sniffer_load/whatsappscan/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/a;->b:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;

    iput-boolean p2, p0, Lcom/transsion/sniffer_load/whatsappscan/a;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/a;->b:Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/whatsappscan/a;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;->a(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;Z)V

    return-void
.end method
