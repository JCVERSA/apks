.class public final synthetic Lcp5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/LockScreenActivity;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/LockScreenActivity;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcp5;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    iput-object p2, p0, Lcp5;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcp5;->b:Lcom/transsion/audio/activities/LockScreenActivity;

    iget-object p0, p0, Lcp5;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, p0}, Lcom/transsion/audio/activities/LockScreenActivity;->F0(Lcom/transsion/audio/activities/LockScreenActivity;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method
