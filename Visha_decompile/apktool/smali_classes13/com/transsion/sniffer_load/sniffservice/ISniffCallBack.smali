.class public interface abstract Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onClientScriptSniffFailed(Ljava/lang/String;)V
.end method

.method public abstract onClientScriptSniffResult(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
.end method

.method public abstract onJsSniffResults(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoArrayBean;)V
.end method

.method public abstract onServerSniffFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onServerSniffResult(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V
.end method

.method public abstract onServerSniffResultAsync(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V
.end method

.method public abstract onStartClientSniff(Ljava/lang/String;)V
.end method
