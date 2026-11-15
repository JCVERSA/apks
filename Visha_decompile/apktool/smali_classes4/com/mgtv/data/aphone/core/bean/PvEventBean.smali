.class public Lcom/mgtv/data/aphone/core/bean/PvEventBean;
.super Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;
.source "SourceFile"


# static fields
.field public static LOGTYPE_PVS:Ljava/lang/String; = "pv"


# instance fields
.field public cntp:Ljava/lang/String;

.field public lastp:Ljava/lang/String;

.field public lob:Ljava/lang/String;

.field public logtype:Ljava/lang/String;

.field public parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->LOGTYPE_PVS:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->logtype:Ljava/lang/String;

    iget-object p1, p2, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->cntp:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->cntp:Ljava/lang/String;

    iget-object p1, p2, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->lastp:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->lastp:Ljava/lang/String;

    return-void
.end method

.method private getLob()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v2, v2, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->lob:Ljava/lang/String;

    iput-object v2, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->lob:Ljava/lang/String;

    :try_start_0
    invoke-static {v2}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "&ver="

    const-string v4, "&pix="

    const-string v5, "&termid="

    const-string v6, "&time="

    const-string v7, "&suuid="

    const-string v8, "&abroad="

    const-string v9, "&pref="

    const-string v10, "&uvip="

    const-string v11, "&uuid="

    const-string v12, "&ch="

    const-string v13, "&sessionid="

    const-string v14, "&bid="

    const-string v15, "&ref="

    move-object/from16 v16, v3

    const-string v3, "&url="

    move-object/from16 v17, v4

    const-string v4, "UTF-8"

    if-nez v2, :cond_0

    :try_start_1
    iget-object v2, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->lob:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v5

    const-string v5, "&did="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v5, v5, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->did:Ljava/lang/String;

    invoke-static {v5}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->ref:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->bid:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->sessionid:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->ch:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->uuid:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->uvip:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->pref:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->abroad:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->suuid:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->time:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v18

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->termid:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->pix:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v0, v0, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->ver:Ljava/lang/String;

    invoke-static {v0}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v5

    const-string v5, "did="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v5, v5, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->did:Ljava/lang/String;

    invoke-static {v5}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->ref:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->bid:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->sessionid:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->ch:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->uuid:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->uvip:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->pref:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->abroad:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->suuid:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->time:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->termid:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->pix:Ljava/lang/String;

    invoke-static {v3}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->parameter:Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;

    iget-object v0, v0, Lcom/mgtv/data/aphone/core/webview/BigDataSDKJSParameter;->ver:Ljava/lang/String;

    invoke-static {v0}, Lcom/mgtv/data/aphone/core/j/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    :goto_2
    return-object v0
.end method


# virtual methods
.method public getPvParams()Ljava/util/Map;
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

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Pv;->LOGTYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$Pv;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Pv;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->logtype:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Pv;->LOB:Lcom/mgtv/data/aphone/core/constants/KeysContants$Pv;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Pv;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->getLob()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Pv;->CNTP:Lcom/mgtv/data/aphone/core/constants/KeysContants$Pv;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Pv;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->cntp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Pv;->LASTP:Lcom/mgtv/data/aphone/core/constants/KeysContants$Pv;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Pv;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PvEventBean;->lastp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getCommonParams()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
