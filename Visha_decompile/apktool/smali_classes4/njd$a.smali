.class public Lnjd$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnjd;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnjd;


# direct methods
.method public constructor <init>(Lnjd;)V
    .locals 0

    iput-object p1, p0, Lnjd$a;->a:Lnjd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnjd$a;->a:Lnjd;

    invoke-static {p1}, Lnjd;->d(Lnjd;)Z

    move-result p2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, p2}, Lnjd;->c(ZZ)V

    iget-object p0, p0, Lnjd$a;->a:Lnjd;

    invoke-static {p0, v0}, Lnjd;->e(Lnjd;Z)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnjd$a;->a:Lnjd;

    invoke-static {p1}, Lnjd;->d(Lnjd;)Z

    move-result p2

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
