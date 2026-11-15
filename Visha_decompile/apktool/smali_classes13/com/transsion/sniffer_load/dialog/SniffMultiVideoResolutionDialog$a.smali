.class public Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnr9$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->c(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$a;->a:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 10

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v6, p6

    sget-object v2, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$ENUM_CALL_FROM;->CALL_FROM_UNKOWN:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$ENUM_CALL_FROM;

    invoke-static {v2}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->b(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$ENUM_CALL_FROM;)V

    invoke-static {}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->a()Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    move-result-object v2

    const/4 v8, 0x0

    if-eqz v2, :cond_7

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "."

    if-nez v3, :cond_1

    invoke-virtual {v6, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lb23;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    move-object v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lhk3;->g:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    move v7, v1

    goto :goto_1

    :cond_3
    move v7, v8

    :goto_1
    iget-object v1, v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$a;->a:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    iget-boolean v1, v1, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->bAsyncServerTask:Z

    if-eqz v1, :cond_5

    new-instance v1, Lcom/transsion/sniffer_load/okdownload/a;

    invoke-direct {v1}, Lcom/transsion/sniffer_load/okdownload/a;-><init>()V

    iget-object v2, v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$a;->a:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    iget-object v3, v2, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->sniffUrl:Ljava/lang/String;

    iput-object v3, v1, Lcom/transsion/sniffer_load/okdownload/a;->h:Ljava/lang/String;

    iget-object v3, v2, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->userAgent:Ljava/lang/String;

    iput-object v3, v1, Lcom/transsion/sniffer_load/okdownload/a;->n:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getCookie()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/sniffer_load/okdownload/a;->o:Ljava/lang/String;

    iput-boolean v8, v1, Lcom/transsion/sniffer_load/okdownload/a;->j:Z

    iget-object v2, v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$a;->a:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    iget-object v3, v2, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->requestBody:Ljava/lang/String;

    iput-object v3, v1, Lcom/transsion/sniffer_load/okdownload/a;->i:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$a;->a:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/sniffer_load/okdownload/a;->d:Ljava/lang/String;

    :goto_2
    iget-object v2, v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$a;->a:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v0, v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$a;->a:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/sniffer_load/okdownload/a;->j(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance v9, Lcom/transsion/sniffer_load/okdownload/a;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/transsion/sniffer_load/okdownload/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V

    move-object v1, v9

    :cond_6
    :goto_3
    invoke-static {}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->a()Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    move-result-object v0

    invoke-interface {v0, v1, v8}, Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;->j(Ljava/lang/Object;I)Z

    move-result v0

    return v0

    :cond_7
    return v8
.end method
