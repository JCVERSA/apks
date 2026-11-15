.class public final synthetic Lcom/transsion/startup/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/startup/StartupManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/startup/e;->a:Lcom/transsion/startup/StartupManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/startup/e;->a:Lcom/transsion/startup/StartupManager;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    check-cast p2, Lcom/google/firebase/remoteconfig/a;

    .line 10
    .line 11
    invoke-static {v0, p1, p2}, Lcom/transsion/startup/StartupManager;->d(Lcom/transsion/startup/StartupManager;ZLcom/google/firebase/remoteconfig/a;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
