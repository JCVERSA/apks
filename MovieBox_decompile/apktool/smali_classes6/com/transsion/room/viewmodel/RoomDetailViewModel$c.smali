.class public final Lcom/transsion/room/viewmodel/RoomDetailViewModel$c;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/viewmodel/RoomDetailViewModel;->w(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/transsion/room/viewmodel/RoomDetailViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/room/viewmodel/RoomDetailViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$c;->d:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$c;->e:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 4
    .line 5
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$c;->e:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->g(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Landroidx/lifecycle/b0;

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
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 12
    .line 13
    sget v0, Lcom/transsion/room/R$string;->join_room_fail:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v0, "onFailure message.."

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v5, 0x4

    .line 38
    const/4 v6, 0x0

    .line 39
    const-string v2, "RoomModel"

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/moviedetailapi/bean/RoomNet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/room/viewmodel/RoomDetailViewModel$c;->e(Lcom/transsion/moviedetailapi/bean/RoomNet;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/moviedetailapi/bean/RoomNet;)V
    .locals 9

    .line 1
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 2
    .line 3
    sget v1, Lcom/transsion/room/R$string;->join_room_success:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lgx/b;->a:Lgx/b$a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lgx/b$a;->a()Lgx/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    iget-object v2, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$c;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lgx/b;->f(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel$c;->e:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->g(Lcom/transsion/room/viewmodel/RoomDetailViewModel;)Landroidx/lifecycle/b0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/transsion/moviedetailapi/bean/RoomNet;

    .line 27
    .line 28
    const-string v2, "success"

    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/transsion/moviedetailapi/bean/RoomNet;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomNet;->getGroupId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "onSuccess groupId.."

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const/4 v7, 0x4

    .line 64
    const/4 v8, 0x0

    .line 65
    const-string v4, "RoomModel"

    .line 66
    .line 67
    const/4 v6, 0x0

    .line 68
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
