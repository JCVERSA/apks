.class public abstract Lcom/google/zxing/oned/rss/expanded/decoders/j;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lkd/a;

.field private final b:Lcom/google/zxing/oned/rss/expanded/decoders/r;


# direct methods
.method constructor <init>(Lkd/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/j;->a:Lkd/a;

    .line 5
    .line 6
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/r;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/r;-><init>(Lkd/a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/j;->b:Lcom/google/zxing/oned/rss/expanded/decoders/r;

    .line 12
    .line 13
    return-void
.end method

.method public static a(Lkd/a;)Lcom/google/zxing/oned/rss/expanded/decoders/j;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lkd/a;->i(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/g;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/g;-><init>(Lkd/a;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v1, 0x2

    .line 15
    invoke-virtual {p0, v1}, Lkd/a;->i(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/k;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/k;-><init>(Lkd/a;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    const/4 v1, 0x4

    .line 28
    invoke-static {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->g(Lkd/a;II)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eq v2, v1, :cond_5

    .line 33
    .line 34
    const/4 v1, 0x5

    .line 35
    if-eq v2, v1, :cond_4

    .line 36
    .line 37
    invoke-static {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->g(Lkd/a;II)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/16 v2, 0xc

    .line 42
    .line 43
    if-eq v1, v2, :cond_3

    .line 44
    .line 45
    const/16 v2, 0xd

    .line 46
    .line 47
    if-eq v1, v2, :cond_2

    .line 48
    .line 49
    const/4 v1, 0x7

    .line 50
    invoke-static {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/r;->g(Lkd/a;II)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const-string v1, "11"

    .line 55
    .line 56
    const-string v2, "13"

    .line 57
    .line 58
    const-string v3, "15"

    .line 59
    .line 60
    const-string v4, "17"

    .line 61
    .line 62
    const-string v5, "310"

    .line 63
    .line 64
    const-string v6, "320"

    .line 65
    .line 66
    packed-switch v0, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v2, "unknown decoder: "

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :pswitch_0
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/e;

    .line 93
    .line 94
    invoke-direct {v0, p0, v6, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/e;-><init>(Lkd/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object v0

    .line 98
    :pswitch_1
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/e;

    .line 99
    .line 100
    invoke-direct {v0, p0, v5, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/e;-><init>(Lkd/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    :pswitch_2
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/e;

    .line 105
    .line 106
    invoke-direct {v0, p0, v6, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/e;-><init>(Lkd/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object v0

    .line 110
    :pswitch_3
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/e;

    .line 111
    .line 112
    invoke-direct {v0, p0, v5, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/e;-><init>(Lkd/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object v0

    .line 116
    :pswitch_4
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/e;

    .line 117
    .line 118
    invoke-direct {v0, p0, v6, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/e;-><init>(Lkd/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object v0

    .line 122
    :pswitch_5
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/e;

    .line 123
    .line 124
    invoke-direct {v0, p0, v5, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/e;-><init>(Lkd/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :pswitch_6
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/e;

    .line 129
    .line 130
    invoke-direct {v0, p0, v6, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/e;-><init>(Lkd/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    :pswitch_7
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/e;

    .line 135
    .line 136
    invoke-direct {v0, p0, v5, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/e;-><init>(Lkd/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-object v0

    .line 140
    :cond_2
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/d;

    .line 141
    .line 142
    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/d;-><init>(Lkd/a;)V

    .line 143
    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_3
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/c;

    .line 147
    .line 148
    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/c;-><init>(Lkd/a;)V

    .line 149
    .line 150
    .line 151
    return-object v0

    .line 152
    :cond_4
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/b;

    .line 153
    .line 154
    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/b;-><init>(Lkd/a;)V

    .line 155
    .line 156
    .line 157
    return-object v0

    .line 158
    :cond_5
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/a;

    .line 159
    .line 160
    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/a;-><init>(Lkd/a;)V

    .line 161
    .line 162
    .line 163
    return-object v0

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final b()Lcom/google/zxing/oned/rss/expanded/decoders/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/j;->b:Lcom/google/zxing/oned/rss/expanded/decoders/r;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final c()Lkd/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/j;->a:Lkd/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract d()Ljava/lang/String;
.end method
