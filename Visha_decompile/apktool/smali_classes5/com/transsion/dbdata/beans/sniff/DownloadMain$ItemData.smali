.class public Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/sniff/DownloadMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemData"
.end annotation


# static fields
.field public static final IS_BT:I = 0x1

.field public static final WHATSAPP_NAME:Ljava/lang/String; = "whatsapppaikkamerkki"


# instance fields
.field private channel:I

.field private icon:Ljava/lang/String;

.field private id:I

.field private is_bt:I

.field private sort:I

.field private type:I

.field private website_download_contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;",
            ">;"
        }
    .end annotation
.end field

.field private website_link:Ljava/lang/String;

.field private website_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBt(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getChannel()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->channel:I

    return p0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->id:I

    return p0
.end method

.method public getIs_bt()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->is_bt:I

    return p0
.end method

.method public getSort()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->sort:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->type:I

    return p0
.end method

.method public getWebsite_download_contents()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->website_download_contents:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getWebsite_link()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->website_link:Ljava/lang/String;

    return-object p0
.end method

.method public getWebsite_name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->website_name:Ljava/lang/String;

    return-object p0
.end method

.method public isWhatsApp()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->website_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->website_name:Ljava/lang/String;

    const-string v0, "whatsapppaikkamerkki"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setChannel(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->channel:I

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->id:I

    return-void
.end method

.method public setIs_bt(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->is_bt:I

    return-void
.end method

.method public setSort(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->sort:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->type:I

    return-void
.end method

.method public setWebsite_download_contents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/sniff/DownloadMain$DownloadContent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->website_download_contents:Ljava/util/ArrayList;

    return-void
.end method

.method public setWebsite_link(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->website_link:Ljava/lang/String;

    return-void
.end method

.method public setWebsite_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->website_name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemData{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->sort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", icon=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", channel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->channel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", website_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->website_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", website_link=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->website_link:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", is_bt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->is_bt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", website_download_contents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->website_download_contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
