.class public Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;
.super Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;
.source "SourceFile"


# static fields
.field public static LOGTYPE_ERROR:Ljava/lang/String; = "error"


# instance fields
.field public bid:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public ed:Ljava/lang/String;

.field public lob:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public logtype:Ljava/lang/String;

.field public termid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;-><init>(Landroid/content/Context;)V

    const-string p1, "9"

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->termid:Ljava/lang/String;

    const-string p1, "1.13.20"

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->bid:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->LOGTYPE_ERROR:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->logtype:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->code:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->ed:Ljava/lang/String;

    iput-object p4, p0, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->lob:Ljava/util/HashMap;

    return-void
.end method

.method private addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3d

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x26

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLob()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->lob:Ljava/util/HashMap;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->lob:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v5, v3}, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    const-string p0, "UTF-8"

    invoke-static {v2, p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object v2
.end method


# virtual methods
.method public getErrorParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->LOGTYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->logtype:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->CODE:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->code:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->ED:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->ed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/mgtv/data/aphone/core/j/a;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->LOB:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->getLob()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->DID:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->did:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->TERMID:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->termid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->VER:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/hunantv/imgo/util/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->SVER:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->sver:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->UUID:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->uuid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->SESSIONID:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->sessionid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->TIME:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->time:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->BID:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/ErrorEventBean;->bid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->ABROAD:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->abroad:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
