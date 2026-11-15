.class public final synthetic Lslc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-static {p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->i(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V

    return-void
.end method
