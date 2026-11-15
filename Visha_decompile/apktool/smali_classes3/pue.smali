.class public final Lpue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luue;


# instance fields
.field public final synthetic a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lvue;Landroid/app/Activity;)V
    .locals 0

    iput-object p2, p0, Lpue;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 0

    iget-object p0, p0, Lpue;->a:Landroid/app/Activity;

    invoke-interface {p1, p0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method
