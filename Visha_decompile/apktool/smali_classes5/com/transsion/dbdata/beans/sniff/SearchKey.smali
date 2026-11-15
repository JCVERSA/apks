.class public Lcom/transsion/dbdata/beans/sniff/SearchKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/sniff/SearchKey$HotKeys;,
        Lcom/transsion/dbdata/beans/sniff/SearchKey$BannerKeys;,
        Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;
    }
.end annotation


# instance fields
.field private bannerKeys:Lcom/transsion/dbdata/beans/sniff/SearchKey$BannerKeys;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_keys"
    .end annotation
.end field

.field private hotKeys:Lcom/transsion/dbdata/beans/sniff/SearchKey$HotKeys;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hot_keys"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerKeys()Lcom/transsion/dbdata/beans/sniff/SearchKey$BannerKeys;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SearchKey;->bannerKeys:Lcom/transsion/dbdata/beans/sniff/SearchKey$BannerKeys;

    return-object p0
.end method

.method public getHotKeys()Lcom/transsion/dbdata/beans/sniff/SearchKey$HotKeys;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SearchKey;->hotKeys:Lcom/transsion/dbdata/beans/sniff/SearchKey$HotKeys;

    return-object p0
.end method

.method public setBannerKeys(Lcom/transsion/dbdata/beans/sniff/SearchKey$BannerKeys;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SearchKey;->bannerKeys:Lcom/transsion/dbdata/beans/sniff/SearchKey$BannerKeys;

    return-void
.end method

.method public setHotKeys(Lcom/transsion/dbdata/beans/sniff/SearchKey$HotKeys;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SearchKey;->hotKeys:Lcom/transsion/dbdata/beans/sniff/SearchKey$HotKeys;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchKey{hotKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/SearchKey;->hotKeys:Lcom/transsion/dbdata/beans/sniff/SearchKey$HotKeys;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bannerKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SearchKey;->bannerKeys:Lcom/transsion/dbdata/beans/sniff/SearchKey$BannerKeys;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
