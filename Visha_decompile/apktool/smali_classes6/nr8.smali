.class public final Lnr8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Llr8;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/transsion/cloud/region_host/util/StorageHelper;

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public f:Lcom/transsion/cloud/region_host/model/DomainMappingData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llr8;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnr8;->a:Landroid/content/Context;

    iput-object p2, p0, Lnr8;->b:Llr8;

    const-string v0, "RegionHostHelper"

    iput-object v0, p0, Lnr8;->c:Ljava/lang/String;

    new-instance v0, Lcom/transsion/cloud/region_host/util/StorageHelper;

    invoke-direct {v0, p1}, Lcom/transsion/cloud/region_host/util/StorageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnr8;->d:Lcom/transsion/cloud/region_host/util/StorageHelper;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lnr8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p1, Ltp5;->a:Ltp5;

    invoke-virtual {p2}, Llr8;->a()Lvp5;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltp5;->c(Lvp5;)V

    invoke-virtual {p0}, Lnr8;->e()Lcom/transsion/cloud/region_host/model/DomainMappingData;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "originalHost"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newHost"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnr8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnr8;->d:Lcom/transsion/cloud/region_host/util/StorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/cloud/region_host/util/StorageHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ltp5;->a:Ltp5;

    iget-object p0, p0, Lnr8;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f13\u5b58\u57df\u540d\u6620\u5c04: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ltp5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "http://"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v2, v0}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https://"

    invoke-static {p1, v1, v3, v2, v0}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lmr8;->a:Lmr8;

    invoke-virtual {v1}, Lmr8;->a()Lkotlin/text/Regex;

    move-result-object v1

    invoke-virtual {v1, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "."

    invoke-static {p1, v1, v3, v2, v0}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_2
    move-object p1, v0

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v1, p1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, p1

    goto :goto_3

    :goto_2
    sget-object v2, Ltp5;->a:Ltp5;

    iget-object p0, p0, Lnr8;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89e3\u6790URL\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", \u9519\u8bef: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Ltp5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lnr8;->f:Lcom/transsion/cloud/region_host/model/DomainMappingData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "cloud-disk.palm.tech"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :sswitch_1
    const-string v2, "test-cloud-disk.palm.tech"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/cloud/region_host/model/DomainMappingData;->getCloudDiskWeb()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :sswitch_2
    const-string v2, "tecno-cloud.palm.tech"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/cloud/region_host/model/DomainMappingData;->getCloudServerWebUrlTecno()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :sswitch_3
    const-string v2, "infinix-cloud.palm.tech"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/transsion/cloud/region_host/model/DomainMappingData;->getCloudServerWebUrlInfinix()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :sswitch_4
    const-string v2, "test-oscloud.transsion-os.com"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :sswitch_5
    const-string v2, "itel-cloud.palm.tech"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/transsion/cloud/region_host/model/DomainMappingData;->getCloudServerWebUrlItel()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :sswitch_6
    const-string v2, "oscloud.palm.tech"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    :goto_0
    sget-object v0, Ltp5;->a:Ltp5;

    iget-object v2, p0, Lnr8;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find mapping host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ltp5;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/transsion/cloud/region_host/model/DomainMappingData;->getCloudServer()Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lnr8;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_7
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62bc170b -> :sswitch_6
        -0x4278ed62 -> :sswitch_5
        0x3554f3f -> :sswitch_4
        0x6869601 -> :sswitch_3
        0x71d06df -> :sswitch_2
        0x1743d9b4 -> :sswitch_1
        0x45000759 -> :sswitch_0
    .end sparse-switch
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "originalHost"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lnr8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lnr8;->d:Lcom/transsion/cloud/region_host/util/StorageHelper;

    invoke-virtual {v1, p1}, Lcom/transsion/cloud/region_host/util/StorageHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lnr8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lnr8;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ltp5;->a:Ltp5;

    iget-object v3, p0, Lnr8;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find mapping host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ltp5;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-static {v1, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lnr8;->d:Lcom/transsion/cloud/region_host/util/StorageHelper;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/cloud/region_host/util/StorageHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnr8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public final e()Lcom/transsion/cloud/region_host/model/DomainMappingData;
    .locals 4

    iget-object v0, p0, Lnr8;->d:Lcom/transsion/cloud/region_host/util/StorageHelper;

    invoke-virtual {v0}, Lcom/transsion/cloud/region_host/util/StorageHelper;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/transsion/cloud/region_host/model/DomainMappingData;->Companion:Lcom/transsion/cloud/region_host/model/DomainMappingData$Companion;

    invoke-virtual {v1, v0}, Lcom/transsion/cloud/region_host/model/DomainMappingData$Companion;->parse(Ljava/lang/String;)Lcom/transsion/cloud/region_host/model/DomainMappingData;

    move-result-object v0

    iput-object v0, p0, Lnr8;->f:Lcom/transsion/cloud/region_host/model/DomainMappingData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Ltp5;->a:Ltp5;

    iget-object p0, p0, Lnr8;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse region host domain error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ltp5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
