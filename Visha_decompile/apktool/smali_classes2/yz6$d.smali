.class public final Lyz6$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyz6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lyz6;


# direct methods
.method public constructor <init>(Lyz6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyz6$d;->a:Lyz6;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lyz6;Lyz6$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lyz6$d;-><init>(Lyz6;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, Lyz6;->b(Landroid/content/Context;)I

    move-result p2

    sget v0, Lblb;->a:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lyz6$d;->a:Lyz6;

    invoke-static {p1, p0}, Lyz6$b;->a(Landroid/content/Context;Lyz6;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyz6$d;->a:Lyz6;

    invoke-static {p0, p2}, Lyz6;->c(Lyz6;I)V

    :goto_0
    return-void
.end method
