.class public abstract Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$ENUM_CALL_FROM;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/util/List;

.field public static c:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

.field public static d:Ljava/lang/ref/WeakReference;

.field public static e:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$ENUM_CALL_FROM;

.field public static f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->a:Ljava/lang/String;

    sget-object v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$ENUM_CALL_FROM;->CALL_FROM_UNKOWN:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$ENUM_CALL_FROM;

    sput-object v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->e:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$ENUM_CALL_FROM;

    return-void
.end method

.method public static bridge synthetic a()Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;
    .locals 1

    sget-object v0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->c:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    return-object v0
.end method

.method public static bridge synthetic b(Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$ENUM_CALL_FROM;)V
    .locals 0

    sput-object p0, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->e:Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$ENUM_CALL_FROM;

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;[I[I)V
    .locals 19

    move-object/from16 v0, p1

    sget-wide v1, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->f:J

    const-wide/16 v3, 0x3e8

    invoke-static {v1, v2, v3, v4}, Ljf;->k(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->f:J

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->d:Ljava/lang/ref/WeakReference;

    sput-object p2, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->c:Lcom/transsion/playercommon/vishaweb/IWebLoadStatusCallback;

    invoke-static/range {p1 .. p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->isNotEmpty(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->bAsyncServerTask:Z

    if-eqz v1, :cond_4

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->b:Ljava/util/List;

    iget-boolean v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->bAsyncServerTask:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;-><init>()V

    sget-object v2, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->b:Ljava/util/List;

    new-instance v9, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getVideoResolution()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getType()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->sniffUrl:Ljava/lang/String;

    const-wide/16 v5, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/magicvideo/data/DownloadMediaItem;

    iget-object v11, v0, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->sniffUrl:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->b:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getMinWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getMinHeight()I

    move-result v16

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/transsion/magicvideo/data/DownloadMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    sget-object v4, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->b:Ljava/util/List;

    new-instance v11, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getVideoResolution()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getSize()J

    move-result-wide v7

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/transsion/magicvideo/data/DownloadMediaItem;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->b:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getMinWidth()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getMinHeight()I

    move-result v18

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/transsion/magicvideo/data/DownloadMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    move-object v1, v2

    :goto_1
    invoke-static {}, Lnr9;->b()Lnr9;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnr9;->d(Lcom/transsion/magicvideo/data/DownloadMediaItem;)V

    invoke-static {}, Lnr9;->b()Lnr9;

    move-result-object v1

    new-instance v2, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$a;

    invoke-direct {v2, v0}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$a;-><init>(Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    invoke-virtual {v1, v2}, Lnr9;->e(Lnr9$a;)V

    invoke-static {}, Lnr9;->b()Lnr9;

    move-result-object v1

    new-instance v2, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$b;

    invoke-direct {v2}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$b;-><init>()V

    invoke-virtual {v1, v2}, Lnr9;->setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {}, Lnr9;->b()Lnr9;

    move-result-object v1

    new-instance v2, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$c;

    invoke-direct {v2}, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog$c;-><init>()V

    invoke-virtual {v1, v2}, Lnr9;->setOnResumeListener(Lcom/transsion/playercommon/fragments/AlertDialogFragment$d;)V

    invoke-static {}, Lnr9;->b()Lnr9;

    move-result-object v1

    sget-object v2, Lcom/transsion/sniffer_load/dialog/SniffMultiVideoResolutionDialog;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v1, v2, v3, v4}, Lnr9;->f(Landroid/content/Context;[I[I)V

    const-string v1, "0"

    sput-object v1, Le16;->c:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getMinResolutionUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le16;->d:Ljava/lang/String;

    invoke-static {}, Le16;->k()V

    :cond_4
    return-void
.end method
