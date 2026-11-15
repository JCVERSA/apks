.class public abstract Lj5d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj5d;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public abstract b(Landroid/os/Message;J)V
.end method

.method public abstract c(Ljava/lang/Runnable;)V
.end method

.method public abstract d(Ljava/lang/Runnable;J)V
.end method

.method public abstract e(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
.end method

.method public f()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lj5d;->c:Landroid/os/Handler;

    return-object p0
.end method

.method public g()V
    .locals 0

    return-void
.end method
