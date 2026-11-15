.class public Lcom/transsion/sniffer_load/WhatsAppSaveActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$e;->a:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$e;->a:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->A0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;Z)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$e;->a(Ljava/lang/Boolean;)V

    return-void
.end method
