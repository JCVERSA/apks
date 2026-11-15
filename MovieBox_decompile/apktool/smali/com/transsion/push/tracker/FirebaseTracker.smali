.class public Lcom/transsion/push/tracker/FirebaseTracker;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Lcom/transsion/push/tracker/FirebaseTracker;

.field private static b:Lcom/transsion/push/tracker/ITracker;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lcom/transsion/push/tracker/FirebaseTracker;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/tracker/FirebaseTracker;->a:Lcom/transsion/push/tracker/FirebaseTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/transsion/push/tracker/FirebaseTracker;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/transsion/push/tracker/FirebaseTracker;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/transsion/push/tracker/FirebaseTracker;->a:Lcom/transsion/push/tracker/FirebaseTracker;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/transsion/push/tracker/FirebaseTracker;->a:Lcom/transsion/push/tracker/FirebaseTracker;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method a(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/transsion/push/tracker/FirebaseTracker;->b:Lcom/transsion/push/tracker/ITracker;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/transsion/push/tracker/ITracker;->track(Lcom/transsion/push/tracker/Tracker$KEY;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    :cond_1
    return-void
.end method

.method public setListener(Lcom/transsion/push/tracker/ITracker;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/transsion/push/tracker/FirebaseTracker;->b:Lcom/transsion/push/tracker/ITracker;

    .line 2
    .line 3
    return-void
.end method
