.class public final Lcom/transsion/push/helper/RoomHelper;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/push/helper/RoomHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/push/helper/RoomHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/helper/RoomHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/push/helper/RoomHelper;->a:Lcom/transsion/push/helper/RoomHelper;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/transsion/baselib/db/AppDatabase;->s1()Lzi/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1, p2, p3}, Lzi/a;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/bean/MsgType;->LOCAL_PUSH:Lcom/transsion/push/bean/MsgType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/push/bean/MsgType;->getType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/push/helper/RoomHelper;->b(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/transsion/baselib/db/AppDatabase;->s1()Lzi/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1, p2, p3}, Lzi/a;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final d(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lcom/transsion/push/helper/RoomHelper$getNewestMsgByReceiveTime$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/push/helper/RoomHelper$getNewestMsgByReceiveTime$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/push/helper/RoomHelper$getNewestMsgByReceiveTime$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/push/helper/RoomHelper$getNewestMsgByReceiveTime$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/push/helper/RoomHelper$getNewestMsgByReceiveTime$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/push/helper/RoomHelper$getNewestMsgByReceiveTime$1;-><init>(Lcom/transsion/push/helper/RoomHelper;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/push/helper/RoomHelper$getNewestMsgByReceiveTime$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/push/helper/RoomHelper$getNewestMsgByReceiveTime$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p2, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/transsion/baselib/db/AppDatabase;->s1()Lzi/a;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput v3, v0, Lcom/transsion/push/helper/RoomHelper$getNewestMsgByReceiveTime$1;->label:I

    .line 64
    .line 65
    invoke-interface {p1, v0}, Lzi/a;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-ne p2, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 73
    .line 74
    if-eqz p2, :cond_4

    .line 75
    .line 76
    move-object p1, p2

    .line 77
    check-cast p1, Ljava/util/Collection;

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :cond_4
    const/4 p1, 0x0

    .line 92
    return-object p1
.end method

.method public final e(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/bean/MsgType;->SUBJECT_SEEKING:Lcom/transsion/push/bean/MsgType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/push/bean/MsgType;->getType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/push/helper/RoomHelper;->b(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final f(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lcom/transsion/push/helper/RoomHelper$hasGetMsgToday$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/push/helper/RoomHelper$hasGetMsgToday$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/push/helper/RoomHelper$hasGetMsgToday$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/push/helper/RoomHelper$hasGetMsgToday$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/push/helper/RoomHelper$hasGetMsgToday$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/push/helper/RoomHelper$hasGetMsgToday$1;-><init>(Lcom/transsion/push/helper/RoomHelper;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/push/helper/RoomHelper$hasGetMsgToday$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/push/helper/RoomHelper$hasGetMsgToday$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput v3, v0, Lcom/transsion/push/helper/RoomHelper$hasGetMsgToday$1;->label:I

    .line 54
    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/transsion/push/helper/RoomHelper;->d(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-ne p2, v1, :cond_3

    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_3
    :goto_1
    check-cast p2, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 63
    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getReceiveTime()Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide p1

    .line 76
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/c0;->f(J)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :cond_4
    const/4 p1, 0x0

    .line 88
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1
.end method

.method public final g(Landroid/content/Context;Lcom/transsion/baselib/db/notification/PullMsgResp;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p3, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;-><init>(Lcom/transsion/push/helper/RoomHelper;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    iget-object p1, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$2:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 47
    .line 48
    iget-object p2, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$1:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p2, Ljava/util/Iterator;

    .line 51
    .line 52
    iget-object v2, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lzi/a;

    .line 55
    .line 56
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_2
    iget-object p1, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$3:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 72
    .line 73
    iget-object p2, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$2:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p2, Ljava/util/Iterator;

    .line 76
    .line 77
    iget-object v2, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Lzi/a;

    .line 80
    .line 81
    iget-object v5, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v5, Lcom/transsion/baselib/db/notification/PullMsgResp;

    .line 84
    .line 85
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_3
    iget-object p1, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$1:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p1, Lzi/a;

    .line 92
    .line 93
    iget-object p2, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p2, Lcom/transsion/baselib/db/notification/PullMsgResp;

    .line 96
    .line 97
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    sget-object p3, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 105
    .line 106
    invoke-virtual {p3, p1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/transsion/baselib/db/AppDatabase;->s1()Lzi/a;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p2, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$0:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object p1, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$1:Ljava/lang/Object;

    .line 117
    .line 118
    iput v5, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->label:I

    .line 119
    .line 120
    invoke-interface {p1, v0}, Lzi/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    if-ne p3, v1, :cond_5

    .line 125
    .line 126
    return-object v1

    .line 127
    :cond_5
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/PullMsgResp;->getItems()Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    if-eqz p3, :cond_9

    .line 132
    .line 133
    check-cast p3, Ljava/lang/Iterable;

    .line 134
    .line 135
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    move-object v2, p1

    .line 140
    move-object v5, p2

    .line 141
    move-object p2, p3

    .line 142
    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_8

    .line 147
    .line 148
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 153
    .line 154
    if-eqz p1, :cond_6

    .line 155
    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide v6

    .line 160
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    invoke-virtual {p1, p3}, Lcom/transsion/baselib/db/notification/MsgBean;->setReceiveTime(Ljava/lang/Long;)V

    .line 165
    .line 166
    .line 167
    sget-object p3, Lcom/transsion/push/bean/MsgStatus;->UNSHOW:Lcom/transsion/push/bean/MsgStatus;

    .line 168
    .line 169
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 170
    .line 171
    .line 172
    move-result p3

    .line 173
    invoke-virtual {p1, p3}, Lcom/transsion/baselib/db/notification/MsgBean;->setMsgStatus(I)V

    .line 174
    .line 175
    .line 176
    iput-object v5, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$0:Ljava/lang/Object;

    .line 177
    .line 178
    iput-object v2, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$1:Ljava/lang/Object;

    .line 179
    .line 180
    iput-object p2, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$2:Ljava/lang/Object;

    .line 181
    .line 182
    iput-object p1, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$3:Ljava/lang/Object;

    .line 183
    .line 184
    iput v4, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->label:I

    .line 185
    .line 186
    invoke-interface {v2, p1, v0}, Lzi/a;->c(Lcom/transsion/baselib/db/notification/MsgBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p3

    .line 190
    if-ne p3, v1, :cond_7

    .line 191
    .line 192
    return-object v1

    .line 193
    :cond_7
    :goto_3
    sget-object p3, Lcom/transsion/push/helper/a;->a:Lcom/transsion/push/helper/a;

    .line 194
    .line 195
    invoke-virtual {p3, p1}, Lcom/transsion/push/helper/a;->d(Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_8
    move-object p1, v2

    .line 200
    move-object p2, v5

    .line 201
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/PullMsgResp;->getSeekingItems()Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    if-eqz p2, :cond_c

    .line 206
    .line 207
    check-cast p2, Ljava/lang/Iterable;

    .line 208
    .line 209
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    move-object v2, p1

    .line 214
    :cond_a
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-eqz p1, :cond_c

    .line 219
    .line 220
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    check-cast p1, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 225
    .line 226
    if-eqz p1, :cond_a

    .line 227
    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 229
    .line 230
    .line 231
    move-result-wide v4

    .line 232
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 233
    .line 234
    .line 235
    move-result-object p3

    .line 236
    invoke-virtual {p1, p3}, Lcom/transsion/baselib/db/notification/MsgBean;->setReceiveTime(Ljava/lang/Long;)V

    .line 237
    .line 238
    .line 239
    sget-object p3, Lcom/transsion/push/bean/MsgStatus;->UNSHOW:Lcom/transsion/push/bean/MsgStatus;

    .line 240
    .line 241
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 242
    .line 243
    .line 244
    move-result p3

    .line 245
    invoke-virtual {p1, p3}, Lcom/transsion/baselib/db/notification/MsgBean;->setMsgStatus(I)V

    .line 246
    .line 247
    .line 248
    iput-object v2, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$0:Ljava/lang/Object;

    .line 249
    .line 250
    iput-object p2, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$1:Ljava/lang/Object;

    .line 251
    .line 252
    iput-object p1, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$2:Ljava/lang/Object;

    .line 253
    .line 254
    const/4 p3, 0x0

    .line 255
    iput-object p3, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->L$3:Ljava/lang/Object;

    .line 256
    .line 257
    iput v3, v0, Lcom/transsion/push/helper/RoomHelper$saveMsgBean$1;->label:I

    .line 258
    .line 259
    invoke-interface {v2, p1, v0}, Lzi/a;->c(Lcom/transsion/baselib/db/notification/MsgBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p3

    .line 263
    if-ne p3, v1, :cond_b

    .line 264
    .line 265
    return-object v1

    .line 266
    :cond_b
    :goto_5
    sget-object p3, Lcom/transsion/push/helper/a;->a:Lcom/transsion/push/helper/a;

    .line 267
    .line 268
    invoke-virtual {p3, p1}, Lcom/transsion/push/helper/a;->d(Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 269
    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_c
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 273
    .line 274
    return-object p1
.end method

.method public final h(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/transsion/baselib/db/AppDatabase;->s1()Lzi/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1, p2, p3}, Lzi/a;->b(Lcom/transsion/baselib/db/notification/MsgBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method
