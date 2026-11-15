.class public final Lcom/transsion/transfer/impl/ClientViewModel$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/impl/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/ClientViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/ClientViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/ClientViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel$b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;JJ)V
    .locals 4

    .line 1
    const-string v0, "remoteFilePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel$b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->i(Lcom/transsion/transfer/impl/ClientViewModel;)Lau/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lkotlin/Pair;

    .line 13
    .line 14
    new-instance v2, Lkotlin/Triple;

    .line 15
    .line 16
    sget-object v3, Lcom/transsion/transfer/impl/TaskState;->TRANSFERRING:Lcom/transsion/transfer/impl/TaskState;

    .line 17
    .line 18
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-direct {v2, v3, p2, p3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lau/b;->n(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public J(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V
    .locals 13

    .line 1
    move-object v9, p1

    .line 2
    move-object v10, p2

    .line 3
    const-string v0, "remoteFilePath"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "state"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/transsion/transfer/impl/TaskState;->CONNECTING:Lcom/transsion/transfer/impl/TaskState;

    .line 14
    .line 15
    if-ne v10, v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcu/b;->a:Lcu/b;

    .line 18
    .line 19
    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    move-wide/from16 v11, p5

    .line 26
    .line 27
    invoke-virtual {v0, p1, v11, v12, v1}, Lcu/b;->h(Ljava/lang/String;JLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    move-object v0, p0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-wide/from16 v11, p5

    .line 33
    .line 34
    sget-object v0, Lcom/transsion/transfer/impl/TaskState;->FINISH:Lcom/transsion/transfer/impl/TaskState;

    .line 35
    .line 36
    if-ne v10, v0, :cond_2

    .line 37
    .line 38
    sget-object v0, Lcu/b;->a:Lcu/b;

    .line 39
    .line 40
    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    const/4 v2, 0x1

    .line 47
    const/4 v3, 0x0

    .line 48
    move-object v1, p1

    .line 49
    move-wide/from16 v4, p5

    .line 50
    .line 51
    move-wide/from16 v6, p7

    .line 52
    .line 53
    invoke-virtual/range {v0 .. v8}, Lcu/b;->g(Ljava/lang/String;ZLjava/lang/String;JJLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sget-object v0, Lcom/transsion/transfer/impl/TaskState;->ERROR:Lcom/transsion/transfer/impl/TaskState;

    .line 58
    .line 59
    if-eq v10, v0, :cond_3

    .line 60
    .line 61
    sget-object v0, Lcom/transsion/transfer/impl/TaskState;->NO_FILE:Lcom/transsion/transfer/impl/TaskState;

    .line 62
    .line 63
    if-ne v10, v0, :cond_0

    .line 64
    .line 65
    :cond_3
    sget-object v0, Lcu/b;->a:Lcu/b;

    .line 66
    .line 67
    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    const/4 v2, 0x0

    .line 74
    const-string v3, "file no found"

    .line 75
    .line 76
    move-object v1, p1

    .line 77
    move-wide/from16 v4, p3

    .line 78
    .line 79
    move-wide/from16 v6, p7

    .line 80
    .line 81
    invoke-virtual/range {v0 .. v8}, Lcu/b;->g(Ljava/lang/String;ZLjava/lang/String;JJLjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :goto_1
    iget-object v1, v0, Lcom/transsion/transfer/impl/ClientViewModel$b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/transsion/transfer/impl/ClientViewModel;->i(Lcom/transsion/transfer/impl/ClientViewModel;)Lau/b;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    new-instance v2, Lkotlin/Pair;

    .line 92
    .line 93
    new-instance v3, Lkotlin/Triple;

    .line 94
    .line 95
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-direct {v3, p2, v4, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {v2, p1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lau/b;->n(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public N()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel$b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->h(Lcom/transsion/transfer/impl/ClientViewModel;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcu/b;->a:Lcu/b;

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "normal"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcu/b;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel$b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->g(Lcom/transsion/transfer/impl/ClientViewModel;)Lau/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lau/b;->n(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "remoteFilePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel$b;->a:Lcom/transsion/transfer/impl/ClientViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->i(Lcom/transsion/transfer/impl/ClientViewModel;)Lau/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lau/b;->n(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
