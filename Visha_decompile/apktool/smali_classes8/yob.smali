.class public final synthetic Lyob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$b;


# instance fields
.field public final synthetic a:Lcom/transsion/magicmovie/application/VideoApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicmovie/application/VideoApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyob;->a:Lcom/transsion/magicmovie/application/VideoApplication;

    return-void
.end method


# virtual methods
.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lyob;->a:Lcom/transsion/magicmovie/application/VideoApplication;

    invoke-static {p0, p1}, Lcom/transsion/magicmovie/application/VideoApplication;->B(Lcom/transsion/magicmovie/application/VideoApplication;Landroid/app/Activity;)V

    return-void
.end method
