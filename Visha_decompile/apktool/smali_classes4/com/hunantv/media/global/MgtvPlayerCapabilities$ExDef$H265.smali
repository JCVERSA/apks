.class Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "H265"
.end annotation


# instance fields
.field hdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;

.field sdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;

.field public support:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;->support:Ljava/lang/String;

    new-instance v0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;

    invoke-direct {v0}, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;->sdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;

    new-instance v0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;

    invoke-direct {v0}, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;->hdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "H265{support=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;->support:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", sdr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;->sdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Sdr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hdr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$H265;->hdr:Lcom/hunantv/media/global/MgtvPlayerCapabilities$ExDef$Hdr;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
