.class Lcom/iab/omid/library/hisavana/internal/j$a;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/hisavana/internal/j;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iab/omid/library/hisavana/internal/j;


# direct methods
.method constructor <init>(Lcom/iab/omid/library/hisavana/internal/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iab/omid/library/hisavana/internal/j$a;->a:Lcom/iab/omid/library/hisavana/internal/j;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/iab/omid/library/hisavana/internal/j$a;->a:Lcom/iab/omid/library/hisavana/internal/j;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/iab/omid/library/hisavana/internal/j;->d(Lcom/iab/omid/library/hisavana/internal/j;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 v0, 0x1

    .line 20
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/iab/omid/library/hisavana/internal/j;->c(ZZ)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/iab/omid/library/hisavana/internal/j$a;->a:Lcom/iab/omid/library/hisavana/internal/j;

    .line 24
    .line 25
    invoke-static {p1, v0}, Lcom/iab/omid/library/hisavana/internal/j;->e(Lcom/iab/omid/library/hisavana/internal/j;Z)Z

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/iab/omid/library/hisavana/internal/j$a;->a:Lcom/iab/omid/library/hisavana/internal/j;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/iab/omid/library/hisavana/internal/j;->d(Lcom/iab/omid/library/hisavana/internal/j;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    const/4 v0, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    return-void
.end method
