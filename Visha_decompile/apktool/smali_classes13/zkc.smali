.class public final synthetic Lzkc;
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

    iput-object p1, p0, Lzkc;->a:Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lzkc;->a:Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;->h0(Lcom/transsion/sniffer_load/fragment/WhatsAppViewFragment;Ljava/util/List;)V

    return-void
.end method
