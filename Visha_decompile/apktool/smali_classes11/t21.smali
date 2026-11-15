.class public final synthetic Lt21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt21;->b:Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;

    iput-object p2, p0, Lt21;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lt21;->b:Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;

    iget-object p0, p0, Lt21;->c:Ljava/lang/String;

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-static {v0, p0, p1}, Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;->b(Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager;Ljava/lang/String;Lcom/transsion/retrofit/reponse/BaseResponse;)Lzfb;

    move-result-object p0

    return-object p0
.end method
