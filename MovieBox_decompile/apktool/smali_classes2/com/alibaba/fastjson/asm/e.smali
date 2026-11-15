.class final Lcom/alibaba/fastjson/asm/e;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:J

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field i:Lcom/alibaba/fastjson/asm/e;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILcom/alibaba/fastjson/asm/e;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/alibaba/fastjson/asm/e;->a:I

    .line 4
    iget p1, p2, Lcom/alibaba/fastjson/asm/e;->b:I

    iput p1, p0, Lcom/alibaba/fastjson/asm/e;->b:I

    .line 5
    iget p1, p2, Lcom/alibaba/fastjson/asm/e;->c:I

    iput p1, p0, Lcom/alibaba/fastjson/asm/e;->c:I

    .line 6
    iget-wide v0, p2, Lcom/alibaba/fastjson/asm/e;->d:J

    iput-wide v0, p0, Lcom/alibaba/fastjson/asm/e;->d:J

    .line 7
    iget-object p1, p2, Lcom/alibaba/fastjson/asm/e;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson/asm/e;->e:Ljava/lang/String;

    .line 8
    iget-object p1, p2, Lcom/alibaba/fastjson/asm/e;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson/asm/e;->f:Ljava/lang/String;

    .line 9
    iget-object p1, p2, Lcom/alibaba/fastjson/asm/e;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson/asm/e;->g:Ljava/lang/String;

    .line 10
    iget p1, p2, Lcom/alibaba/fastjson/asm/e;->h:I

    iput p1, p0, Lcom/alibaba/fastjson/asm/e;->h:I

    return-void
.end method


# virtual methods
.method a(Lcom/alibaba/fastjson/asm/e;)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/asm/e;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 5
    .line 6
    const/16 v2, 0xf

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq v0, v2, :cond_4

    .line 10
    .line 11
    const/16 v2, 0xc

    .line 12
    .line 13
    if-eq v0, v2, :cond_2

    .line 14
    .line 15
    const/16 v2, 0xd

    .line 16
    .line 17
    if-eq v0, v2, :cond_6

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Lcom/alibaba/fastjson/asm/e;->e:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/e;->e:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p1, Lcom/alibaba/fastjson/asm/e;->f:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/e;->f:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object p1, p1, Lcom/alibaba/fastjson/asm/e;->g:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/e;->g:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v1, v3

    .line 54
    :goto_0
    return v1

    .line 55
    :pswitch_0
    iget p1, p1, Lcom/alibaba/fastjson/asm/e;->c:I

    .line 56
    .line 57
    iget v0, p0, Lcom/alibaba/fastjson/asm/e;->c:I

    .line 58
    .line 59
    if-ne p1, v0, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v1, v3

    .line 63
    :goto_1
    return v1

    .line 64
    :cond_2
    iget-object v0, p1, Lcom/alibaba/fastjson/asm/e;->e:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/e;->e:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object p1, p1, Lcom/alibaba/fastjson/asm/e;->f:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/e;->f:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move v1, v3

    .line 86
    :goto_2
    return v1

    .line 87
    :cond_4
    :pswitch_1
    iget-wide v4, p1, Lcom/alibaba/fastjson/asm/e;->d:J

    .line 88
    .line 89
    iget-wide v6, p0, Lcom/alibaba/fastjson/asm/e;->d:J

    .line 90
    .line 91
    cmp-long p1, v4, v6

    .line 92
    .line 93
    if-nez p1, :cond_5

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    move v1, v3

    .line 97
    :goto_3
    return v1

    .line 98
    :cond_6
    :pswitch_2
    iget-object p1, p1, Lcom/alibaba/fastjson/asm/e;->e:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/e;->e:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    return p1

    .line 107
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method b(I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/asm/e;->b:I

    .line 3
    .line 4
    iput p1, p0, Lcom/alibaba/fastjson/asm/e;->c:I

    .line 5
    .line 6
    const v1, 0x7fffffff

    .line 7
    .line 8
    .line 9
    add-int/2addr v0, p1

    .line 10
    and-int p1, v0, v1

    .line 11
    .line 12
    iput p1, p0, Lcom/alibaba/fastjson/asm/e;->h:I

    .line 13
    .line 14
    return-void
.end method

.method c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/alibaba/fastjson/asm/e;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/alibaba/fastjson/asm/e;->e:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/alibaba/fastjson/asm/e;->f:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/alibaba/fastjson/asm/e;->g:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    const v1, 0x7fffffff

    .line 11
    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x7

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0xc

    .line 23
    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    const/16 v0, 0xd

    .line 27
    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    mul-int/2addr p2, p3

    .line 39
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    mul-int/2addr p2, p3

    .line 44
    add-int/2addr p1, p2

    .line 45
    and-int/2addr p1, v1

    .line 46
    iput p1, p0, Lcom/alibaba/fastjson/asm/e;->h:I

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    mul-int/2addr p2, p3

    .line 58
    add-int/2addr p1, p2

    .line 59
    and-int/2addr p1, v1

    .line 60
    iput p1, p0, Lcom/alibaba/fastjson/asm/e;->h:I

    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    add-int/2addr p1, p2

    .line 68
    and-int/2addr p1, v1

    .line 69
    iput p1, p0, Lcom/alibaba/fastjson/asm/e;->h:I

    .line 70
    .line 71
    return-void
.end method
