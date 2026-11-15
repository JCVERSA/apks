.class public final synthetic Lcom/transsion/version/update/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/transsion/version/update/RemoteVersionInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/version/update/j;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/version/update/j;->b:Lcom/transsion/version/update/RemoteVersionInfo;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/version/update/j;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/version/update/j;->b:Lcom/transsion/version/update/RemoteVersionInfo;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {v0, v1, p1}, Lcom/transsion/version/update/UpdateVersionRequest;->d(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
