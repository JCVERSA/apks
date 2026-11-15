.class public final Ll0j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Li0j;Ltbg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    const/4 p1, 0x0

    invoke-interface {p5, p2, p1}, Ltbg;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lolg;

    new-instance p2, Le0j;

    invoke-interface {p5, p3, p1}, Ltbg;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lolg;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Le0j;-><init>(Ll0j;Lolg;Li0j;)V

    return-void
.end method
