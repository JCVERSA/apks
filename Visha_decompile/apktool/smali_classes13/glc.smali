.class public final synthetic Lglc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lglc;->b:Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;

    iput-boolean p2, p0, Lglc;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lglc;->b:Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;

    iget-boolean p0, p0, Lglc;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->g0(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;Z)V

    return-void
.end method
