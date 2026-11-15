.class public final Lnue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luue;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lvue;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lnue;->a:Landroid/app/Activity;

    iput-object p3, p0, Lnue;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    iget-object v0, p0, Lnue;->a:Landroid/app/Activity;

    iget-object p0, p0, Lnue;->b:Landroid/os/Bundle;

    invoke-interface {p1, v0, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
