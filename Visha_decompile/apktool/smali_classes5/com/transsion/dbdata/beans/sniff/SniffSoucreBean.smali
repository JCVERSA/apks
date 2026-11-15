.class public Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$TokenInfo;,
        Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$ParamValue;,
        Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$PostValue;
    }
.end annotation


# static fields
.field public static final JSON_KEY_COOKIES:Ljava/lang/String; = "cookies"

.field public static final JSON_KEY_COVERURL:Ljava/lang/String; = "coverUrl"

.field public static final JSON_KEY_GETCOOKIESKEY:Ljava/lang/String; = "getCookiesKey"

.field public static final JSON_KEY_PARAM_VALUE:Ljava/lang/String; = "param_value"

.field public static final JSON_KEY_POST_VALUE:Ljava/lang/String; = "post_value"

.field public static final JSON_KEY_SNIFF_URL:Ljava/lang/String; = "sniff_url"

.field public static final JSON_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final JSON_KEY_TOKEN_INFO:Ljava/lang/String; = "token_info"


# instance fields
.field private paramValue:Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$ParamValue;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "param_value"
    .end annotation
.end field

.field private postValue:Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$PostValue;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "post_value"
    .end annotation
.end field

.field private tokenInfo:Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$TokenInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token_info"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParamValue()Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$ParamValue;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean;->paramValue:Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$ParamValue;

    return-object p0
.end method

.method public getPostValue()Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$PostValue;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean;->postValue:Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$PostValue;

    return-object p0
.end method

.method public getTokenInfo()Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$TokenInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean;->tokenInfo:Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$TokenInfo;

    return-object p0
.end method

.method public setParamValue(Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$ParamValue;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean;->paramValue:Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$ParamValue;

    return-void
.end method

.method public setPostValue(Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$PostValue;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean;->postValue:Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$PostValue;

    return-void
.end method

.method public setTokenInfo(Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$TokenInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean;->tokenInfo:Lcom/transsion/dbdata/beans/sniff/SniffSoucreBean$TokenInfo;

    return-void
.end method
