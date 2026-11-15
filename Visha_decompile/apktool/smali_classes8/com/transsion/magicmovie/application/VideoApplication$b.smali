.class public Lcom/transsion/magicmovie/application/VideoApplication$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/application/VideoApplication;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicmovie/application/VideoApplication;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/application/VideoApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/application/VideoApplication$b;->b:Lcom/transsion/magicmovie/application/VideoApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicmovie/application/VideoApplication$b;->b:Lcom/transsion/magicmovie/application/VideoApplication;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lia7;->setCustomDensity(Landroid/content/Context;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method
