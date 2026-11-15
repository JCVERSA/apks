.class public final Lcom/transsion/room/viewmodel/d$d;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/viewmodel/d;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/room/viewmodel/d;


# direct methods
.method constructor <init>(Lcom/transsion/room/viewmodel/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/viewmodel/d$d;->d:Lcom/transsion/room/viewmodel/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/transsion/room/viewmodel/d$d;->d:Lcom/transsion/room/viewmodel/d;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/room/viewmodel/d;->d(Lcom/transsion/room/viewmodel/d;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "onFailure message.."

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v5, 0x4

    .line 31
    const/4 v6, 0x0

    .line 32
    const-string v2, "RoomModel"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/moviedetailapi/bean/RoomNet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/room/viewmodel/d$d;->e(Lcom/transsion/moviedetailapi/bean/RoomNet;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/moviedetailapi/bean/RoomNet;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/room/viewmodel/d$d;->d:Lcom/transsion/room/viewmodel/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/room/viewmodel/d;->d(Lcom/transsion/room/viewmodel/d;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/transsion/moviedetailapi/bean/RoomNet;

    .line 8
    .line 9
    const-string v2, "update"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/transsion/moviedetailapi/bean/RoomNet;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomNet;->getGroupId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "onSuccess groupId.."

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const/4 v7, 0x4

    .line 45
    const/4 v8, 0x0

    .line 46
    const-string v4, "RoomModel"

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
