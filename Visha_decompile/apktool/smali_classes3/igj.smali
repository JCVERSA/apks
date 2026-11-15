.class public final Ligj;
.super Landroid/media/AudioDeviceCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lqgj;


# direct methods
.method public synthetic constructor <init>(Lqgj;Logj;)V
    .locals 0

    iput-object p1, p0, Ligj;->a:Lqgj;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 2

    iget-object p0, p0, Ligj;->a:Lqgj;

    invoke-static {p0}, Lqgj;->a(Lqgj;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p0}, Lqgj;->b(Lqgj;)Lhvg;

    move-result-object v0

    invoke-static {p0}, Lqgj;->d(Lqgj;)Lsgj;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lggj;->c(Landroid/content/Context;Lhvg;Lsgj;)Lggj;

    move-result-object p1

    invoke-static {p0, p1}, Lqgj;->f(Lqgj;Lggj;)V

    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 4

    iget-object p0, p0, Ligj;->a:Lqgj;

    invoke-static {p0}, Lqgj;->d(Lqgj;)Lsgj;

    move-result-object v0

    sget v1, Lkfh;->a:I

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lqgj;->e(Lqgj;Lsgj;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p0}, Lqgj;->a(Lqgj;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p0}, Lqgj;->b(Lqgj;)Lhvg;

    move-result-object v0

    invoke-static {p0}, Lqgj;->d(Lqgj;)Lsgj;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lggj;->c(Landroid/content/Context;Lhvg;Lsgj;)Lggj;

    move-result-object p1

    invoke-static {p0, p1}, Lqgj;->f(Lqgj;Lggj;)V

    return-void
.end method
