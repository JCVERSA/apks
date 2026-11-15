.class public final Lure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwre;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lxre;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lure;->a:Landroid/app/Activity;

    iput-object p3, p0, Lure;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    iget-object v0, p0, Lure;->a:Landroid/app/Activity;

    iget-object p0, p0, Lure;->b:Landroid/os/Bundle;

    invoke-interface {p1, v0, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
