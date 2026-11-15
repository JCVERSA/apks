.class public final synthetic Lvlc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/transsion/playercommon/whatsapp/WhatsappFile;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/videomodel/WhatsappViewModel;IILcom/transsion/playercommon/whatsapp/WhatsappFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvlc;->b:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iput p2, p0, Lvlc;->c:I

    iput p3, p0, Lvlc;->d:I

    iput-object p4, p0, Lvlc;->e:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lvlc;->b:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iget v1, p0, Lvlc;->c:I

    iget v2, p0, Lvlc;->d:I

    iget-object p0, p0, Lvlc;->e:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->h(Lcom/transsion/playercommon/videomodel/WhatsappViewModel;IILcom/transsion/playercommon/whatsapp/WhatsappFile;Ljava/lang/Boolean;)V

    return-void
.end method
