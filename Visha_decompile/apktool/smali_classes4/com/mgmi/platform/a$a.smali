.class final Lcom/mgmi/platform/a$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/platform/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgmi/platform/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mgmi/platform/a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgmi/platform/a$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mgmi/platform/a;Lcom/mgmi/platform/a$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgmi/platform/a$a;-><init>(Lcom/mgmi/platform/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/mgmi/platform/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/platform/a;

    if-eqz p0, :cond_2

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/mgmi/platform/a;->a(Lcom/mgmi/platform/a;Z)Z

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {p0, v0}, Lcom/mgmi/platform/a;->a(Lcom/mgmi/platform/a;Z)Z

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0, v0}, Lcom/mgmi/platform/a;->a(Lcom/mgmi/platform/a;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
