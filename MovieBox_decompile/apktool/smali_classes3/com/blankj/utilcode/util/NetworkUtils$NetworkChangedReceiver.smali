.class public final Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkChangedReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$a;
    }
.end annotation


# instance fields
.field private a:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field private b:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->b:Ljava/util/Set;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->e()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic b(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->a:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;)Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->a:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->b:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method private static e()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$a;->a()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method f(Lcom/blankj/utilcode/util/NetworkUtils$a;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$1;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$1;-><init>(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;Lcom/blankj/utilcode/util/NetworkUtils$a;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/blankj/utilcode/util/e0;->J(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method g(Lcom/blankj/utilcode/util/NetworkUtils$a;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$2;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$2;-><init>(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;Lcom/blankj/utilcode/util/NetworkUtils$a;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/blankj/utilcode/util/e0;->J(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;-><init>(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v0, 0x3e8

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lcom/blankj/utilcode/util/e0;->K(Ljava/lang/Runnable;J)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
