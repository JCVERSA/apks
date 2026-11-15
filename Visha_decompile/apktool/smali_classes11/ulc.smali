.class public final synthetic Lulc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/playercommon/whatsapp/WhatsappFile;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lulc;->b:Landroid/content/Context;

    iput-object p2, p0, Lulc;->c:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lulc;->b:Landroid/content/Context;

    iget-object p0, p0, Lulc;->c:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    check-cast p1, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-static {v0, p0, p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->d(Landroid/content/Context;Lcom/transsion/playercommon/whatsapp/WhatsappFile;Lcom/transsion/playercommon/videomodel/WhatsappViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
