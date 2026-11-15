.class public final synthetic Lalc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lalc;->a:Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lalc;->a:Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;

    check-cast p1, Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->k0(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;Lcom/transsion/playercommon/videomodel/WhatsappViewModel$b;)V

    return-void
.end method
