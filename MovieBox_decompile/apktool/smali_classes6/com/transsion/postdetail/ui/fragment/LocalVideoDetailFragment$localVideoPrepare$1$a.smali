.class final Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$localVideoPrepare$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$localVideoPrepare$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$localVideoPrepare$1$a;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$localVideoPrepare$1$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Triple;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$localVideoPrepare$1$a;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p1}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$localVideoPrepare$1$a;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 22
    .line 23
    invoke-static {v4}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->N0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v6, "Prepare success width = "

    .line 33
    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p2, "\uff0c height = "

    .line 41
    .line 42
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, " ,duration = "

    .line 49
    .line 50
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p2, ",completed = "

    .line 57
    .line 58
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const/4 v4, 0x4

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-static/range {v0 .. v5}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$localVideoPrepare$1$a;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 75
    .line 76
    invoke-virtual {p1}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/lang/Number;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    invoke-static {p2, v0, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->z1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;J)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$localVideoPrepare$1$a;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 90
    .line 91
    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Ljava/lang/Number;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-static {p2, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->S1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;I)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$localVideoPrepare$1$a;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 105
    .line 106
    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Ljava/lang/Number;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-static {p2, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->R1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;I)V

    .line 117
    .line 118
    .line 119
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$localVideoPrepare$1$a;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 120
    .line 121
    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Ljava/lang/Number;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Ljava/lang/Number;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$localVideoPrepare$1$a;->b:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {p2, v0, p1, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->p1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;IILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 147
    .line 148
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Triple;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$localVideoPrepare$1$a;->a(Lkotlin/Triple;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
