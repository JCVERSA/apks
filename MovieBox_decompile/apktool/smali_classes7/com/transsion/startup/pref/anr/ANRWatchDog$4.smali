.class Lcom/transsion/startup/pref/anr/ANRWatchDog$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/startup/pref/anr/ANRWatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/startup/pref/anr/ANRWatchDog;


# direct methods
.method constructor <init>(Lcom/transsion/startup/pref/anr/ANRWatchDog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog$4;->this$0:Lcom/transsion/startup/pref/anr/ANRWatchDog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog$4;->this$0:Lcom/transsion/startup/pref/anr/ANRWatchDog;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/transsion/startup/pref/anr/ANRWatchDog;->b(Lcom/transsion/startup/pref/anr/ANRWatchDog;J)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/startup/pref/anr/ANRWatchDog$4;->this$0:Lcom/transsion/startup/pref/anr/ANRWatchDog;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/transsion/startup/pref/anr/ANRWatchDog;->a(Lcom/transsion/startup/pref/anr/ANRWatchDog;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
