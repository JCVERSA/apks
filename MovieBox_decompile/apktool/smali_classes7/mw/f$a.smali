.class public final Lmw/f$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lim/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmw/f;->g(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmw/f$a;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/memberapi/MemberAdTaskInfo;Z)V
    .locals 5

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberAdTaskInfo;->getList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Lcom/transsion/memberapi/MemberTaskItem;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/16 v2, 0x13

    .line 41
    .line 42
    if-ne v1, v2, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object v0, p2

    .line 46
    :goto_1
    check-cast v0, Lcom/transsion/memberapi/MemberTaskItem;

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    move-object v0, p2

    .line 50
    :goto_2
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 51
    .line 52
    sget-object v1, Lmw/f;->a:Lmw/f;

    .line 53
    .line 54
    invoke-static {v1}, Lmw/f;->f(Lmw/f;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    move-object v3, p2

    .line 66
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, " --> fetchAdTaskInfo() --> \u83b7\u53d6\u4efb\u52a1\u5217\u8868 -- taskId = "

    .line 75
    .line 76
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const/4 v3, 0x0

    .line 87
    const/4 v4, 0x2

    .line 88
    invoke-static {p1, v2, v3, v4, p2}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-nez p1, :cond_5

    .line 98
    .line 99
    const-string p1, ""

    .line 100
    .line 101
    :cond_5
    iget-object p2, p0, Lmw/f$a;->a:Lkotlin/jvm/functions/Function1;

    .line 102
    .line 103
    invoke-static {v1, p1, p2}, Lmw/f;->e(Lmw/f;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_6
    iget-object p1, p0, Lmw/f$a;->a:Lkotlin/jvm/functions/Function1;

    .line 108
    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_7
    :goto_4
    return-void
.end method

.method public b(Lcom/transsion/memberapi/MemberTaskInfo;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lim/d$a;->b(Lim/d;Lcom/transsion/memberapi/MemberTaskInfo;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
