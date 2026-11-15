.class public Lcom/transsion/sniffer_load/WhatsAppSaveActivity$f;
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

    iput-object p1, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$f;->a:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$f;->a:Lcom/transsion/sniffer_load/WhatsAppSaveActivity;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity;->z0(Lcom/transsion/sniffer_load/WhatsAppSaveActivity;Z)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WhatsAppSaveActivity$f;->a(Ljava/util/List;)V

    return-void
.end method
