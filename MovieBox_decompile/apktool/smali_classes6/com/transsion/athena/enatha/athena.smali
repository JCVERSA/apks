.class public abstract Lcom/transsion/athena/enatha/athena;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public abstract a(Landroid/os/Message;J)V
.end method

.method public abstract a(Ljava/lang/Runnable;)V
.end method

.method public abstract a(Ljava/lang/Runnable;J)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
.end method

.method public b()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method
