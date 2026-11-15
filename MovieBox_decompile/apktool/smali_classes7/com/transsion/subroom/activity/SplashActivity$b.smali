.class public final Lcom/transsion/subroom/activity/SplashActivity$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/ad/hi/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subroom/activity/SplashActivity;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subroom/activity/SplashActivity;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/transsion/subroom/activity/SplashActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subroom/activity/SplashActivity$b;->a:Lcom/transsion/subroom/activity/SplashActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/subroom/activity/SplashActivity$b;->b:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onInitSuccess()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, p0, Lcom/transsion/subroom/activity/SplashActivity$b;->a:Lcom/transsion/subroom/activity/SplashActivity;

    .line 8
    .line 9
    invoke-static {v3}, Lcom/transsion/subroom/activity/SplashActivity;->U(Lcom/transsion/subroom/activity/SplashActivity;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    sub-long/2addr v1, v3

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v4, "HiSavana init success, cost "

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", --> start load ad"

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v4, 0x4

    .line 37
    const/4 v5, 0x0

    .line 38
    const-string v1, "SplashActivity"

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/subroom/activity/SplashActivity$b;->a:Lcom/transsion/subroom/activity/SplashActivity;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/transsion/subroom/activity/SplashActivity;->R(Lcom/transsion/subroom/activity/SplashActivity;)Landroid/os/Handler;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/transsion/subroom/activity/SplashActivity$b;->b:Ljava/lang/Runnable;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/transsion/subroom/activity/SplashActivity$b;->a:Lcom/transsion/subroom/activity/SplashActivity;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/transsion/subroom/activity/SplashActivity;->X(Lcom/transsion/subroom/activity/SplashActivity;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
