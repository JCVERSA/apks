.class public final synthetic Lplc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/videomodel/WhatsappViewModel;Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lplc;->b:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iput-object p2, p0, Lplc;->c:Ljava/util/List;

    iput-object p3, p0, Lplc;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lplc;->b:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iget-object v1, p0, Lplc;->c:Ljava/util/List;

    iget-object p0, p0, Lplc;->d:Landroid/content/Context;

    check-cast p1, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->j(Lcom/transsion/playercommon/videomodel/WhatsappViewModel;Ljava/util/List;Landroid/content/Context;Lcom/transsion/playercommon/videomodel/WhatsappViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
