.class public final Lcom/transsion/baselib/net/AppLifeStatusInterceptor$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/baselib/report/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/net/AppLifeStatusInterceptor;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/net/AppLifeStatusInterceptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor$b;->a:Lcom/transsion/baselib/net/AppLifeStatusInterceptor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBackgroundStatusChange(Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "record_latest_foreground_time"

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/transsion/baselib/net/d;->a:Lcom/transsion/baselib/net/d;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/baselib/net/d;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/transsion/baselib/net/AppLifeStatusInterceptor$b;->a:Lcom/transsion/baselib/net/AppLifeStatusInterceptor;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/transsion/baselib/net/AppLifeStatusInterceptor;->c(Lcom/transsion/baselib/net/AppLifeStatusInterceptor;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
