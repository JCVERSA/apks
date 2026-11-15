.class public Lcom/transsion/athena/aidl/AthenaTrackService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public final b:Lcom/transsion/athena/athena$athena;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/transsion/athena/aidl/AthenaTrackService$athena;

    invoke-direct {v0, p0}, Lcom/transsion/athena/aidl/AthenaTrackService$athena;-><init>(Lcom/transsion/athena/aidl/AthenaTrackService;)V

    iput-object v0, p0, Lcom/transsion/athena/aidl/AthenaTrackService;->b:Lcom/transsion/athena/athena$athena;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const-string p1, "AthenaTrackService onBind"

    invoke-static {p1}, Lc4d;->b(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/athena/aidl/AthenaTrackService;->b:Lcom/transsion/athena/athena$athena;

    return-object p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "AthenaTrackService onUnbind"

    invoke-static {v0}, Lc4d;->b(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
