.class public final synthetic Loy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-static {p1}, Lpy2;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)Lcom/transsion/dbdata/beans/sniff/DownloadConfigData;

    move-result-object p0

    return-object p0
.end method
