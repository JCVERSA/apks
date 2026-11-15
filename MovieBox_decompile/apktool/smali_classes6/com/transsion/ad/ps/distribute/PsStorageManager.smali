.class public final Lcom/transsion/ad/ps/distribute/PsStorageManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/ad/ps/distribute/PsStorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/ps/distribute/PsStorageManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PsStorageManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/ps/distribute/PsStorageManager;->a:Lcom/transsion/ad/ps/distribute/PsStorageManager;

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


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;->label:I

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
    iput v1, v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;-><init>(Lcom/transsion/ad/ps/distribute/PsStorageManager;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;->label:I

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
    iget-object v0, v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Ljava/util/HashSet;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 60
    .line 61
    .line 62
    sget-object v2, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    .line 63
    .line 64
    iput-object p1, v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    iput v3, v0, Lcom/transsion/ad/ps/distribute/PsStorageManager$deleteInvalidFile$1;->label:I

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-ne v0, v1, :cond_3

    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_3
    move-object v4, v0

    .line 76
    move-object v0, p1

    .line 77
    move-object p1, v4

    .line 78
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 79
    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    check-cast p1, Ljava/lang/Iterable;

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;->getPsLinkAdInfoStr()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-class v2, Lcom/transsion/ad/ps/model/PsLinkAdInfo;

    .line 105
    .line 106
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lcom/transsion/ad/ps/model/PsLinkAdInfo;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getPath()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/transsion/ad/ps/model/PsLinkAdInfo;->getAdvertiserAvatarPath()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    sget-object p1, Lcom/transsion/ad/a;->a:Lcom/transsion/ad/a;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/transsion/ad/a;->a()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 134
    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    sget-object v1, Lci/h;->a:Lci/h;

    .line 151
    .line 152
    new-instance v2, Ljava/io/File;

    .line 153
    .line 154
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2, v0}, Lci/h;->b(Ljava/io/File;Ljava/util/HashSet;)V

    .line 158
    .line 159
    .line 160
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 161
    .line 162
    return-object p1
.end method
