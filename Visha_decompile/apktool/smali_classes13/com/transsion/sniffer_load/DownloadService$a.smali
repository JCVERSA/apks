.class public Lcom/transsion/sniffer_load/DownloadService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/DownloadService;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$a;->a:Lcom/transsion/sniffer_load/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "simultaneous_download_mode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$a;->a:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {p0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/core/MainApp;->e:I

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->G(Lcom/transsion/sniffer_load/DownloadService$b;I)V

    goto :goto_0

    :cond_0
    const-string p1, "allow_mobile_data"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lpz6;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    invoke-static {p1}, Lpz6;->c(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->h:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$a;->a:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {p0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/DownloadService$b;->L()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$a;->a:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {p0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/DownloadService$b;->f(Z)V

    :cond_2
    :goto_0
    return-void
.end method
