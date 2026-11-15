.class public Lcom/hunantv/imgo/net/DlnaRenderSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/imgo/entity/JsonInterface;
.implements Ljava/io/Serializable;


# instance fields
.field private info:Ljava/lang/String;

.field private isothercdn:I

.field private status:Ljava/lang/String;

.field private svrip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/net/DlnaRenderSource;->info:Ljava/lang/String;

    return-object p0
.end method

.method public getIsothercdn()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/net/DlnaRenderSource;->isothercdn:I

    return p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/net/DlnaRenderSource;->status:Ljava/lang/String;

    return-object p0
.end method

.method public getSvrip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/net/DlnaRenderSource;->svrip:Ljava/lang/String;

    return-object p0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/DlnaRenderSource;->info:Ljava/lang/String;

    return-void
.end method

.method public setIsothercdn(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/net/DlnaRenderSource;->isothercdn:I

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/DlnaRenderSource;->status:Ljava/lang/String;

    return-void
.end method

.method public setSvrip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/net/DlnaRenderSource;->svrip:Ljava/lang/String;

    return-void
.end method
