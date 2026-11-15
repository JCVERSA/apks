.class Lcom/transsion/athena/enatha/enatha$ehatna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/athena/enatha/enatha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/athena/enatha/enatha;


# direct methods
.method public constructor <init>(Lcom/transsion/athena/enatha/enatha;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha$ehatna;->a:Lcom/transsion/athena/enatha/enatha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha$ehatna;->a:Lcom/transsion/athena/enatha/enatha;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/athena/enatha/enatha;->x(Lcom/transsion/athena/enatha/enatha;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha$ehatna;->a:Lcom/transsion/athena/enatha/enatha;

    iget-object v0, v0, Lj5d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/athena/enatha/enatha$ehatna;->a:Lcom/transsion/athena/enatha/enatha;

    invoke-static {p0}, Lcom/transsion/athena/enatha/enatha;->I(Lcom/transsion/athena/enatha/enatha;)Landroid/location/LocationListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
