.class public Lc5/q0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lc5/z0;
.implements Lc5/a0;
.implements Lb5/b2;


# static fields
.field public static final a:Lc5/q0;

.field private static final b:Lorg/joda/time/format/DateTimeFormatter;

.field private static final c:Lorg/joda/time/format/DateTimeFormatter;

.field private static final d:Lorg/joda/time/format/DateTimeFormatter;

.field private static final e:Lorg/joda/time/format/DateTimeFormatter;

.field private static final f:Lorg/joda/time/format/DateTimeFormatter;

.field private static final g:Lorg/joda/time/format/DateTimeFormatter;

.field private static final h:Lorg/joda/time/format/DateTimeFormatter;

.field private static final i:Lorg/joda/time/format/DateTimeFormatter;

.field private static final j:Lorg/joda/time/format/DateTimeFormatter;

.field private static final k:Lorg/joda/time/format/DateTimeFormatter;

.field private static final l:Lorg/joda/time/format/DateTimeFormatter;

.field private static final m:Lorg/joda/time/format/DateTimeFormatter;

.field private static final n:Lorg/joda/time/format/DateTimeFormatter;

.field private static final o:Lorg/joda/time/format/DateTimeFormatter;

.field private static final p:Lorg/joda/time/format/DateTimeFormatter;

.field private static final q:Lorg/joda/time/format/DateTimeFormatter;

.field private static final r:Lorg/joda/time/format/DateTimeFormatter;

.field private static final s:Lorg/joda/time/format/DateTimeFormatter;

.field private static final t:Lorg/joda/time/format/DateTimeFormatter;

.field private static final u:Lorg/joda/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc5/q0;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/q0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc5/q0;->a:Lc5/q0;

    .line 7
    .line 8
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 9
    .line 10
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sput-object v1, Lc5/q0;->b:Lorg/joda/time/format/DateTimeFormatter;

    .line 15
    .line 16
    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 17
    .line 18
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sput-object v1, Lc5/q0;->c:Lorg/joda/time/format/DateTimeFormatter;

    .line 23
    .line 24
    const-string v1, "yyyy/MM/dd HH:mm:ss"

    .line 25
    .line 26
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sput-object v1, Lc5/q0;->d:Lorg/joda/time/format/DateTimeFormatter;

    .line 31
    .line 32
    const-string v1, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    .line 33
    .line 34
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sput-object v1, Lc5/q0;->e:Lorg/joda/time/format/DateTimeFormatter;

    .line 39
    .line 40
    const-string v1, "yyyy\u5e74M\u6708d\u65e5 H\u65f6m\u5206s\u79d2"

    .line 41
    .line 42
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sput-object v1, Lc5/q0;->f:Lorg/joda/time/format/DateTimeFormatter;

    .line 47
    .line 48
    const-string v1, "yyyy\ub144M\uc6d4d\uc77c HH:mm:ss"

    .line 49
    .line 50
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    sput-object v1, Lc5/q0;->g:Lorg/joda/time/format/DateTimeFormatter;

    .line 55
    .line 56
    const-string v1, "MM/dd/yyyy HH:mm:ss"

    .line 57
    .line 58
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sput-object v1, Lc5/q0;->h:Lorg/joda/time/format/DateTimeFormatter;

    .line 63
    .line 64
    const-string v1, "dd/MM/yyyy HH:mm:ss"

    .line 65
    .line 66
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    sput-object v1, Lc5/q0;->i:Lorg/joda/time/format/DateTimeFormatter;

    .line 71
    .line 72
    const-string v1, "dd.MM.yyyy HH:mm:ss"

    .line 73
    .line 74
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    sput-object v1, Lc5/q0;->j:Lorg/joda/time/format/DateTimeFormatter;

    .line 79
    .line 80
    const-string v1, "dd-MM-yyyy HH:mm:ss"

    .line 81
    .line 82
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sput-object v1, Lc5/q0;->k:Lorg/joda/time/format/DateTimeFormatter;

    .line 87
    .line 88
    const-string v1, "yyyyMMdd"

    .line 89
    .line 90
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sput-object v1, Lc5/q0;->l:Lorg/joda/time/format/DateTimeFormatter;

    .line 95
    .line 96
    const-string v1, "yyyy/MM/dd"

    .line 97
    .line 98
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    sput-object v1, Lc5/q0;->m:Lorg/joda/time/format/DateTimeFormatter;

    .line 103
    .line 104
    const-string v1, "yyyy\u5e74M\u6708d\u65e5"

    .line 105
    .line 106
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    sput-object v1, Lc5/q0;->n:Lorg/joda/time/format/DateTimeFormatter;

    .line 111
    .line 112
    const-string v1, "yyyy\ub144M\uc6d4d\uc77c"

    .line 113
    .line 114
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    sput-object v1, Lc5/q0;->o:Lorg/joda/time/format/DateTimeFormatter;

    .line 119
    .line 120
    const-string v1, "MM/dd/yyyy"

    .line 121
    .line 122
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    sput-object v1, Lc5/q0;->p:Lorg/joda/time/format/DateTimeFormatter;

    .line 127
    .line 128
    const-string v1, "dd/MM/yyyy"

    .line 129
    .line 130
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    sput-object v1, Lc5/q0;->q:Lorg/joda/time/format/DateTimeFormatter;

    .line 135
    .line 136
    const-string v1, "dd.MM.yyyy"

    .line 137
    .line 138
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    sput-object v1, Lc5/q0;->r:Lorg/joda/time/format/DateTimeFormatter;

    .line 143
    .line 144
    const-string v1, "dd-MM-yyyy"

    .line 145
    .line 146
    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    sput-object v1, Lc5/q0;->s:Lorg/joda/time/format/DateTimeFormatter;

    .line 151
    .line 152
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    sput-object v0, Lc5/q0;->t:Lorg/joda/time/format/DateTimeFormatter;

    .line 165
    .line 166
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 167
    .line 168
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sput-object v0, Lc5/q0;->u:Lorg/joda/time/format/DateTimeFormatter;

    .line 173
    .line 174
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i(Lc5/j1;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 2
    .line 3
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p3, Lc5/q0;->u:Lorg/joda/time/format/DateTimeFormatter;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p3}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    :goto_0
    invoke-virtual {p3, p2}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Lc5/j1;->o0(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a(Lc5/o0;Ljava/lang/Object;Lc5/p;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    invoke-virtual {p3}, Lc5/p;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p2, Lorg/joda/time/ReadablePartial;

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lc5/q0;->i(Lc5/j1;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    return v0
.end method

.method public c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2

    .line 1
    iget-object p3, p1, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Lc5/j1;->h0()V

    .line 6
    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    if-nez p4, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    :cond_1
    const-class v0, Lorg/joda/time/LocalDateTime;

    .line 16
    .line 17
    if-ne p4, v0, :cond_8

    .line 18
    .line 19
    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 20
    .line 21
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    check-cast p2, Lorg/joda/time/LocalDateTime;

    .line 26
    .line 27
    invoke-virtual {p1}, Lc5/o0;->o()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_6

    .line 32
    .line 33
    and-int/2addr p5, v0

    .line 34
    if-nez p5, :cond_5

    .line 35
    .line 36
    invoke-virtual {p1, p4}, Lc5/o0;->t(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    if-eqz p4, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 44
    .line 45
    invoke-virtual {p1, p4}, Lc5/o0;->t(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    sget-object v1, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {p2}, Lorg/joda/time/LocalDateTime;->getMillisOfSecond()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_4

    .line 59
    .line 60
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_5
    :goto_0
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 67
    .line 68
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 69
    .line 70
    invoke-direct {p0, p3, p2, v1}, Lc5/q0;->i(Lc5/j1;Lorg/joda/time/ReadablePartial;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_7
    sget-object p1, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    .line 75
    .line 76
    invoke-static {p1}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p2, p1}, Lorg/joda/time/LocalDateTime;->toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lorg/joda/time/DateTime;->toInstant()Lorg/joda/time/Instant;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lorg/joda/time/Instant;->getMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide p1

    .line 92
    invoke-virtual {p3, p1, p2}, Lc5/j1;->g0(J)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p3, p1}, Lc5/j1;->o0(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    return-void
.end method

.method public d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lc5/q0;->e(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public e(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p3, p1, La5/a;->f:La5/b;

    .line 2
    .line 3
    invoke-interface {p3}, La5/b;->t0()I

    .line 4
    .line 5
    .line 6
    move-result p5

    .line 7
    const/4 v0, 0x0

    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-ne p5, v1, :cond_0

    .line 11
    .line 12
    invoke-interface {p3}, La5/b;->d0()V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-interface {p3}, La5/b;->t0()I

    .line 17
    .line 18
    .line 19
    move-result p5

    .line 20
    const/4 v2, 0x4

    .line 21
    if-ne p5, v2, :cond_14

    .line 22
    .line 23
    invoke-interface {p3}, La5/b;->o0()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p3}, La5/b;->d0()V

    .line 28
    .line 29
    .line 30
    if-eqz p4, :cond_2

    .line 31
    .line 32
    const-string p3, "yyyy-MM-dd HH:mm:ss"

    .line 33
    .line 34
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_1

    .line 39
    .line 40
    sget-object p3, Lc5/q0;->b:Lorg/joda/time/format/DateTimeFormatter;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p4}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object p3, v0

    .line 49
    :goto_0
    const-string p5, ""

    .line 50
    .line 51
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p5

    .line 55
    if-eqz p5, :cond_3

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_3
    const-class p5, Lorg/joda/time/LocalDateTime;

    .line 59
    .line 60
    if-ne p2, p5, :cond_6

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    const/16 p5, 0xa

    .line 67
    .line 68
    if-eq p2, p5, :cond_5

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-ne p2, v1, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {p0, p1, p3}, Lc5/q0;->f(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    goto :goto_2

    .line 82
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, p4, p3}, Lc5/q0;->g(Ljava/lang/String;Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    sget-object p2, Lorg/joda/time/LocalTime;->MIDNIGHT:Lorg/joda/time/LocalTime;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lorg/joda/time/LocalDate;->toLocalDateTime(Lorg/joda/time/LocalTime;)Lorg/joda/time/LocalDateTime;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_2
    return-object p1

    .line 93
    :cond_6
    const-class p5, Lorg/joda/time/LocalDate;

    .line 94
    .line 95
    const/16 v2, 0x17

    .line 96
    .line 97
    if-ne p2, p5, :cond_8

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-ne p2, v2, :cond_7

    .line 104
    .line 105
    invoke-static {p1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    goto :goto_3

    .line 114
    :cond_7
    invoke-virtual {p0, p1, p4, p3}, Lc5/q0;->g(Ljava/lang/String;Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    :goto_3
    return-object p1

    .line 119
    :cond_8
    const-class p4, Lorg/joda/time/LocalTime;

    .line 120
    .line 121
    if-ne p2, p4, :cond_a

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-ne p2, v2, :cond_9

    .line 128
    .line 129
    invoke-static {p1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->toLocalTime()Lorg/joda/time/LocalTime;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    goto :goto_4

    .line 138
    :cond_9
    invoke-static {p1}, Lorg/joda/time/LocalTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalTime;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    :goto_4
    return-object p1

    .line 143
    :cond_a
    const-class p4, Lorg/joda/time/DateTime;

    .line 144
    .line 145
    if-ne p2, p4, :cond_c

    .line 146
    .line 147
    sget-object p2, Lc5/q0;->b:Lorg/joda/time/format/DateTimeFormatter;

    .line 148
    .line 149
    if-ne p3, p2, :cond_b

    .line 150
    .line 151
    sget-object p3, Lc5/q0;->t:Lorg/joda/time/format/DateTimeFormatter;

    .line 152
    .line 153
    :cond_b
    invoke-virtual {p0, p1, p3}, Lc5/q0;->h(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    return-object p1

    .line 158
    :cond_c
    const-class p3, Lorg/joda/time/DateTimeZone;

    .line 159
    .line 160
    if-ne p2, p3, :cond_d

    .line 161
    .line 162
    invoke-static {p1}, Lorg/joda/time/DateTimeZone;->forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    return-object p1

    .line 167
    :cond_d
    const-class p3, Lorg/joda/time/Period;

    .line 168
    .line 169
    if-ne p2, p3, :cond_e

    .line 170
    .line 171
    invoke-static {p1}, Lorg/joda/time/Period;->parse(Ljava/lang/String;)Lorg/joda/time/Period;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    return-object p1

    .line 176
    :cond_e
    const-class p3, Lorg/joda/time/Duration;

    .line 177
    .line 178
    if-ne p2, p3, :cond_f

    .line 179
    .line 180
    invoke-static {p1}, Lorg/joda/time/Duration;->parse(Ljava/lang/String;)Lorg/joda/time/Duration;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    return-object p1

    .line 185
    :cond_f
    const-class p3, Lorg/joda/time/Instant;

    .line 186
    .line 187
    if-ne p2, p3, :cond_13

    .line 188
    .line 189
    const/4 p2, 0x0

    .line 190
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 191
    .line 192
    .line 193
    move-result p3

    .line 194
    if-ge p2, p3, :cond_11

    .line 195
    .line 196
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 197
    .line 198
    .line 199
    move-result p3

    .line 200
    const/16 p4, 0x30

    .line 201
    .line 202
    if-lt p3, p4, :cond_12

    .line 203
    .line 204
    const/16 p4, 0x39

    .line 205
    .line 206
    if-le p3, p4, :cond_10

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_10
    add-int/lit8 p2, p2, 0x1

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    if-le p2, v1, :cond_12

    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    const/16 p3, 0x13

    .line 223
    .line 224
    if-ge p2, p3, :cond_12

    .line 225
    .line 226
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 227
    .line 228
    .line 229
    move-result-wide p1

    .line 230
    new-instance p3, Lorg/joda/time/Instant;

    .line 231
    .line 232
    invoke-direct {p3, p1, p2}, Lorg/joda/time/Instant;-><init>(J)V

    .line 233
    .line 234
    .line 235
    return-object p3

    .line 236
    :cond_12
    :goto_6
    invoke-static {p1}, Lorg/joda/time/Instant;->parse(Ljava/lang/String;)Lorg/joda/time/Instant;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    return-object p1

    .line 241
    :cond_13
    const-class p3, Lorg/joda/time/format/DateTimeFormatter;

    .line 242
    .line 243
    if-ne p2, p3, :cond_1d

    .line 244
    .line 245
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    return-object p1

    .line 250
    :cond_14
    invoke-interface {p3}, La5/b;->t0()I

    .line 251
    .line 252
    .line 253
    move-result p4

    .line 254
    const/4 p5, 0x2

    .line 255
    if-ne p4, p5, :cond_1b

    .line 256
    .line 257
    invoke-interface {p3}, La5/b;->l()J

    .line 258
    .line 259
    .line 260
    move-result-wide p4

    .line 261
    invoke-interface {p3}, La5/b;->d0()V

    .line 262
    .line 263
    .line 264
    sget-object p1, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    .line 265
    .line 266
    if-nez p1, :cond_15

    .line 267
    .line 268
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    :cond_15
    const-class p3, Lorg/joda/time/DateTime;

    .line 273
    .line 274
    if-ne p2, p3, :cond_16

    .line 275
    .line 276
    new-instance p2, Lorg/joda/time/DateTime;

    .line 277
    .line 278
    invoke-static {p1}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-direct {p2, p4, p5, p1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 283
    .line 284
    .line 285
    return-object p2

    .line 286
    :cond_16
    new-instance p3, Lorg/joda/time/LocalDateTime;

    .line 287
    .line 288
    invoke-static {p1}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-direct {p3, p4, p5, p1}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 293
    .line 294
    .line 295
    const-class p1, Lorg/joda/time/LocalDateTime;

    .line 296
    .line 297
    if-ne p2, p1, :cond_17

    .line 298
    .line 299
    return-object p3

    .line 300
    :cond_17
    const-class p1, Lorg/joda/time/LocalDate;

    .line 301
    .line 302
    if-ne p2, p1, :cond_18

    .line 303
    .line 304
    invoke-virtual {p3}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    return-object p1

    .line 309
    :cond_18
    const-class p1, Lorg/joda/time/LocalTime;

    .line 310
    .line 311
    if-ne p2, p1, :cond_19

    .line 312
    .line 313
    invoke-virtual {p3}, Lorg/joda/time/LocalDateTime;->toLocalTime()Lorg/joda/time/LocalTime;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    return-object p1

    .line 318
    :cond_19
    const-class p1, Lorg/joda/time/Instant;

    .line 319
    .line 320
    if-ne p2, p1, :cond_1a

    .line 321
    .line 322
    new-instance p1, Lorg/joda/time/Instant;

    .line 323
    .line 324
    invoke-direct {p1, p4, p5}, Lorg/joda/time/Instant;-><init>(J)V

    .line 325
    .line 326
    .line 327
    return-object p1

    .line 328
    :cond_1a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 329
    .line 330
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 331
    .line 332
    .line 333
    throw p1

    .line 334
    :cond_1b
    invoke-interface {p3}, La5/b;->t0()I

    .line 335
    .line 336
    .line 337
    move-result p3

    .line 338
    const/16 p4, 0xc

    .line 339
    .line 340
    if-ne p3, p4, :cond_1e

    .line 341
    .line 342
    invoke-virtual {p1}, La5/a;->h0()Lcom/alibaba/fastjson/JSONObject;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    const-class p3, Lorg/joda/time/Instant;

    .line 347
    .line 348
    if-ne p2, p3, :cond_1d

    .line 349
    .line 350
    const-string p2, "epochSecond"

    .line 351
    .line 352
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object p2

    .line 356
    instance-of p3, p2, Ljava/lang/Number;

    .line 357
    .line 358
    if-eqz p3, :cond_1c

    .line 359
    .line 360
    check-cast p2, Ljava/lang/Number;

    .line 361
    .line 362
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    .line 363
    .line 364
    .line 365
    move-result-wide p1

    .line 366
    invoke-static {p1, p2}, Lorg/joda/time/Instant;->ofEpochSecond(J)Lorg/joda/time/Instant;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    return-object p1

    .line 371
    :cond_1c
    const-string p2, "millis"

    .line 372
    .line 373
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    instance-of p2, p1, Ljava/lang/Number;

    .line 378
    .line 379
    if-eqz p2, :cond_1d

    .line 380
    .line 381
    check-cast p1, Ljava/lang/Number;

    .line 382
    .line 383
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    .line 384
    .line 385
    .line 386
    move-result-wide p1

    .line 387
    invoke-static {p1, p2}, Lorg/joda/time/Instant;->ofEpochMilli(J)Lorg/joda/time/Instant;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    return-object p1

    .line 392
    :cond_1d
    return-object v0

    .line 393
    :cond_1e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 394
    .line 395
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 396
    .line 397
    .line 398
    throw p1
.end method

.method protected f(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-nez p2, :cond_10

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v3, 0x20

    .line 11
    .line 12
    const/16 v4, 0x10

    .line 13
    .line 14
    const/16 v5, 0xd

    .line 15
    .line 16
    const/4 v6, 0x7

    .line 17
    const/16 v7, 0x2e

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    const/4 v9, 0x4

    .line 21
    const/16 v10, 0x13

    .line 22
    .line 23
    const/16 v11, 0x3a

    .line 24
    .line 25
    const/16 v12, 0xa

    .line 26
    .line 27
    const/16 v13, 0x30

    .line 28
    .line 29
    const/16 v14, 0x2d

    .line 30
    .line 31
    if-ne v1, v10, :cond_9

    .line 32
    .line 33
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v15

    .line 45
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-ne v5, v11, :cond_a

    .line 54
    .line 55
    if-ne v4, v11, :cond_a

    .line 56
    .line 57
    if-ne v1, v14, :cond_1

    .line 58
    .line 59
    if-ne v6, v14, :cond_1

    .line 60
    .line 61
    const/16 v1, 0x54

    .line 62
    .line 63
    if-ne v15, v1, :cond_0

    .line 64
    .line 65
    sget-object v1, Lc5/q0;->u:Lorg/joda/time/format/DateTimeFormatter;

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_0
    if-ne v15, v3, :cond_a

    .line 70
    .line 71
    sget-object v1, Lc5/q0;->b:Lorg/joda/time/format/DateTimeFormatter;

    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_1
    const/16 v3, 0x2f

    .line 76
    .line 77
    if-ne v1, v3, :cond_2

    .line 78
    .line 79
    if-ne v6, v3, :cond_2

    .line 80
    .line 81
    sget-object v1, Lc5/q0;->d:Lorg/joda/time/format/DateTimeFormatter;

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    const/4 v6, 0x2

    .line 94
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    const/4 v11, 0x3

    .line 99
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    const/4 v15, 0x5

    .line 104
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    .line 105
    .line 106
    .line 107
    move-result v15

    .line 108
    if-ne v6, v3, :cond_7

    .line 109
    .line 110
    if-ne v15, v3, :cond_7

    .line 111
    .line 112
    sub-int/2addr v4, v13

    .line 113
    mul-int/2addr v4, v12

    .line 114
    sub-int/2addr v5, v13

    .line 115
    add-int/2addr v4, v5

    .line 116
    sub-int/2addr v11, v13

    .line 117
    mul-int/2addr v11, v12

    .line 118
    sub-int/2addr v1, v13

    .line 119
    add-int/2addr v11, v1

    .line 120
    const/16 v1, 0xc

    .line 121
    .line 122
    if-le v4, v1, :cond_3

    .line 123
    .line 124
    sget-object v1, Lc5/q0;->i:Lorg/joda/time/format/DateTimeFormatter;

    .line 125
    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :cond_3
    if-le v11, v1, :cond_4

    .line 129
    .line 130
    sget-object v1, Lc5/q0;->h:Lorg/joda/time/format/DateTimeFormatter;

    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const-string v3, "US"

    .line 143
    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_5

    .line 149
    .line 150
    sget-object v1, Lc5/q0;->h:Lorg/joda/time/format/DateTimeFormatter;

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    const-string v3, "BR"

    .line 154
    .line 155
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-nez v3, :cond_6

    .line 160
    .line 161
    const-string v3, "AU"

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_a

    .line 168
    .line 169
    :cond_6
    sget-object v1, Lc5/q0;->i:Lorg/joda/time/format/DateTimeFormatter;

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_7
    if-ne v6, v7, :cond_8

    .line 173
    .line 174
    if-ne v15, v7, :cond_8

    .line 175
    .line 176
    sget-object v1, Lc5/q0;->j:Lorg/joda/time/format/DateTimeFormatter;

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_8
    if-ne v6, v14, :cond_a

    .line 180
    .line 181
    if-ne v15, v14, :cond_a

    .line 182
    .line 183
    sget-object v1, Lc5/q0;->k:Lorg/joda/time/format/DateTimeFormatter;

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    const/16 v15, 0x17

    .line 191
    .line 192
    if-ne v1, v15, :cond_a

    .line 193
    .line 194
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 215
    .line 216
    .line 217
    move-result v15

    .line 218
    if-ne v5, v11, :cond_a

    .line 219
    .line 220
    if-ne v4, v11, :cond_a

    .line 221
    .line 222
    if-ne v1, v14, :cond_a

    .line 223
    .line 224
    if-ne v6, v14, :cond_a

    .line 225
    .line 226
    if-ne v12, v3, :cond_a

    .line 227
    .line 228
    if-ne v15, v7, :cond_a

    .line 229
    .line 230
    sget-object v1, Lc5/q0;->c:Lorg/joda/time/format/DateTimeFormatter;

    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_a
    move-object/from16 v1, p2

    .line 234
    .line 235
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    const/16 v4, 0x11

    .line 240
    .line 241
    if-lt v3, v4, :cond_d

    .line 242
    .line 243
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    const/16 v4, 0x5e74

    .line 248
    .line 249
    if-ne v3, v4, :cond_c

    .line 250
    .line 251
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    sub-int/2addr v1, v8

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    const/16 v3, 0x79d2

    .line 261
    .line 262
    if-ne v1, v3, :cond_b

    .line 263
    .line 264
    sget-object v1, Lc5/q0;->f:Lorg/joda/time/format/DateTimeFormatter;

    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_b
    sget-object v1, Lc5/q0;->e:Lorg/joda/time/format/DateTimeFormatter;

    .line 268
    .line 269
    goto :goto_1

    .line 270
    :cond_c
    const v4, 0xb144

    .line 271
    .line 272
    .line 273
    if-ne v3, v4, :cond_d

    .line 274
    .line 275
    sget-object v1, Lc5/q0;->g:Lorg/joda/time/format/DateTimeFormatter;

    .line 276
    .line 277
    :cond_d
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-ge v2, v3, :cond_f

    .line 282
    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    if-lt v3, v13, :cond_11

    .line 288
    .line 289
    const/16 v4, 0x39

    .line 290
    .line 291
    if-le v3, v4, :cond_e

    .line 292
    .line 293
    goto :goto_2

    .line 294
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 295
    .line 296
    goto :goto_1

    .line 297
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    const/16 v3, 0x8

    .line 302
    .line 303
    if-le v2, v3, :cond_11

    .line 304
    .line 305
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-ge v2, v10, :cond_11

    .line 310
    .line 311
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 312
    .line 313
    .line 314
    move-result-wide v0

    .line 315
    new-instance v2, Lorg/joda/time/LocalDateTime;

    .line 316
    .line 317
    sget-object v3, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    .line 318
    .line 319
    invoke-static {v3}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-direct {v2, v0, v1, v3}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 324
    .line 325
    .line 326
    return-object v2

    .line 327
    :cond_10
    move-object/from16 v1, p2

    .line 328
    .line 329
    :cond_11
    :goto_2
    if-nez v1, :cond_12

    .line 330
    .line 331
    invoke-static/range {p1 .. p1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    goto :goto_3

    .line 336
    :cond_12
    invoke-static {v0, v1}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    :goto_3
    return-object v0
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;
    .locals 11

    .line 1
    if-nez p3, :cond_d

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    sget-object p3, Lc5/q0;->l:Lorg/joda/time/format/DateTimeFormatter;

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x4

    .line 19
    const/16 v3, 0xa

    .line 20
    .line 21
    const/16 v4, 0x30

    .line 22
    .line 23
    if-ne p2, v3, :cond_8

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const/4 v5, 0x7

    .line 30
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/16 v6, 0x2f

    .line 35
    .line 36
    if-ne p2, v6, :cond_1

    .line 37
    .line 38
    if-ne v5, v6, :cond_1

    .line 39
    .line 40
    sget-object p3, Lc5/q0;->m:Lorg/joda/time/format/DateTimeFormatter;

    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const/4 v7, 0x1

    .line 47
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const/4 v8, 0x2

    .line 52
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    const/4 v9, 0x3

    .line 57
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    const/4 v10, 0x5

    .line 62
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    if-ne v8, v6, :cond_6

    .line 67
    .line 68
    if-ne v10, v6, :cond_6

    .line 69
    .line 70
    sub-int/2addr v5, v4

    .line 71
    mul-int/2addr v5, v3

    .line 72
    sub-int/2addr v7, v4

    .line 73
    add-int/2addr v5, v7

    .line 74
    sub-int/2addr v9, v4

    .line 75
    mul-int/2addr v9, v3

    .line 76
    sub-int/2addr p2, v4

    .line 77
    add-int/2addr v9, p2

    .line 78
    const/16 p2, 0xc

    .line 79
    .line 80
    if-le v5, p2, :cond_2

    .line 81
    .line 82
    sget-object p2, Lc5/q0;->q:Lorg/joda/time/format/DateTimeFormatter;

    .line 83
    .line 84
    :goto_0
    move-object p3, p2

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    if-le v9, p2, :cond_3

    .line 87
    .line 88
    sget-object p2, Lc5/q0;->p:Lorg/joda/time/format/DateTimeFormatter;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const-string v3, "US"

    .line 100
    .line 101
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_4

    .line 106
    .line 107
    sget-object p2, Lc5/q0;->p:Lorg/joda/time/format/DateTimeFormatter;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    const-string v3, "BR"

    .line 111
    .line 112
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_5

    .line 117
    .line 118
    const-string v3, "AU"

    .line 119
    .line 120
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-eqz p2, :cond_8

    .line 125
    .line 126
    :cond_5
    sget-object p2, Lc5/q0;->q:Lorg/joda/time/format/DateTimeFormatter;

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    const/16 p2, 0x2e

    .line 130
    .line 131
    if-ne v8, p2, :cond_7

    .line 132
    .line 133
    if-ne v10, p2, :cond_7

    .line 134
    .line 135
    sget-object p3, Lc5/q0;->r:Lorg/joda/time/format/DateTimeFormatter;

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_7
    const/16 p2, 0x2d

    .line 139
    .line 140
    if-ne v8, p2, :cond_8

    .line 141
    .line 142
    if-ne v10, p2, :cond_8

    .line 143
    .line 144
    sget-object p3, Lc5/q0;->s:Lorg/joda/time/format/DateTimeFormatter;

    .line 145
    .line 146
    :cond_8
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    const/16 v3, 0x9

    .line 151
    .line 152
    if-lt p2, v3, :cond_a

    .line 153
    .line 154
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    const/16 v2, 0x5e74

    .line 159
    .line 160
    if-ne p2, v2, :cond_9

    .line 161
    .line 162
    sget-object p2, Lc5/q0;->n:Lorg/joda/time/format/DateTimeFormatter;

    .line 163
    .line 164
    :goto_2
    move-object p3, p2

    .line 165
    goto :goto_3

    .line 166
    :cond_9
    const v2, 0xb144

    .line 167
    .line 168
    .line 169
    if-ne p2, v2, :cond_a

    .line 170
    .line 171
    sget-object p2, Lc5/q0;->o:Lorg/joda/time/format/DateTimeFormatter;

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_a
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-ge v1, p2, :cond_c

    .line 179
    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    if-lt p2, v4, :cond_d

    .line 185
    .line 186
    const/16 v2, 0x39

    .line 187
    .line 188
    if-le p2, v2, :cond_b

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    if-le p2, v0, :cond_d

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    const/16 v0, 0x13

    .line 205
    .line 206
    if-ge p2, v0, :cond_d

    .line 207
    .line 208
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 209
    .line 210
    .line 211
    move-result-wide p1

    .line 212
    new-instance p3, Lorg/joda/time/LocalDateTime;

    .line 213
    .line 214
    sget-object v0, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    .line 215
    .line 216
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forTimeZone(Ljava/util/TimeZone;)Lorg/joda/time/DateTimeZone;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-direct {p3, p1, p2, v0}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p3}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    return-object p1

    .line 228
    :cond_d
    :goto_4
    if-nez p3, :cond_e

    .line 229
    .line 230
    invoke-static {p1}, Lorg/joda/time/LocalDate;->parse(Ljava/lang/String;)Lorg/joda/time/LocalDate;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    goto :goto_5

    .line 235
    :cond_e
    invoke-static {p1, p3}, Lorg/joda/time/LocalDate;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    :goto_5
    return-object p1
.end method

.method protected h(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;
    .locals 11

    .line 1
    if-nez p2, :cond_c

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x13

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x4

    .line 11
    if-ne v0, v1, :cond_9

    .line 12
    .line 13
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x7

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/16 v4, 0xa

    .line 23
    .line 24
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/16 v6, 0xd

    .line 29
    .line 30
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/16 v7, 0x10

    .line 35
    .line 36
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const/16 v8, 0x3a

    .line 41
    .line 42
    if-ne v6, v8, :cond_9

    .line 43
    .line 44
    if-ne v7, v8, :cond_9

    .line 45
    .line 46
    const/16 v6, 0x2d

    .line 47
    .line 48
    if-ne v0, v6, :cond_1

    .line 49
    .line 50
    if-ne v1, v6, :cond_1

    .line 51
    .line 52
    const/16 v0, 0x54

    .line 53
    .line 54
    if-ne v5, v0, :cond_0

    .line 55
    .line 56
    sget-object p2, Lc5/q0;->u:Lorg/joda/time/format/DateTimeFormatter;

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_0
    const/16 v0, 0x20

    .line 61
    .line 62
    if-ne v5, v0, :cond_9

    .line 63
    .line 64
    sget-object p2, Lc5/q0;->b:Lorg/joda/time/format/DateTimeFormatter;

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_1
    const/16 v5, 0x2f

    .line 69
    .line 70
    if-ne v0, v5, :cond_2

    .line 71
    .line 72
    if-ne v1, v5, :cond_2

    .line 73
    .line 74
    sget-object p2, Lc5/q0;->d:Lorg/joda/time/format/DateTimeFormatter;

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_2
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    const/4 v8, 0x2

    .line 88
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    const/4 v9, 0x3

    .line 93
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    const/4 v10, 0x5

    .line 98
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    if-ne v8, v5, :cond_7

    .line 103
    .line 104
    if-ne v10, v5, :cond_7

    .line 105
    .line 106
    add-int/lit8 v1, v1, -0x30

    .line 107
    .line 108
    mul-int/2addr v1, v4

    .line 109
    add-int/lit8 v7, v7, -0x30

    .line 110
    .line 111
    add-int/2addr v1, v7

    .line 112
    add-int/lit8 v9, v9, -0x30

    .line 113
    .line 114
    mul-int/2addr v9, v4

    .line 115
    add-int/lit8 v0, v0, -0x30

    .line 116
    .line 117
    add-int/2addr v9, v0

    .line 118
    const/16 v0, 0xc

    .line 119
    .line 120
    if-le v1, v0, :cond_3

    .line 121
    .line 122
    sget-object p2, Lc5/q0;->i:Lorg/joda/time/format/DateTimeFormatter;

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    if-le v9, v0, :cond_4

    .line 126
    .line 127
    sget-object p2, Lc5/q0;->h:Lorg/joda/time/format/DateTimeFormatter;

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v1, "US"

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_5

    .line 145
    .line 146
    sget-object p2, Lc5/q0;->h:Lorg/joda/time/format/DateTimeFormatter;

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_5
    const-string v1, "BR"

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_6

    .line 156
    .line 157
    const-string v1, "AU"

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_9

    .line 164
    .line 165
    :cond_6
    sget-object p2, Lc5/q0;->i:Lorg/joda/time/format/DateTimeFormatter;

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_7
    const/16 v0, 0x2e

    .line 169
    .line 170
    if-ne v8, v0, :cond_8

    .line 171
    .line 172
    if-ne v10, v0, :cond_8

    .line 173
    .line 174
    sget-object p2, Lc5/q0;->j:Lorg/joda/time/format/DateTimeFormatter;

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_8
    if-ne v8, v6, :cond_9

    .line 178
    .line 179
    if-ne v10, v6, :cond_9

    .line 180
    .line 181
    sget-object p2, Lc5/q0;->k:Lorg/joda/time/format/DateTimeFormatter;

    .line 182
    .line 183
    :cond_9
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    const/16 v1, 0x11

    .line 188
    .line 189
    if-lt v0, v1, :cond_c

    .line 190
    .line 191
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    const/16 v1, 0x5e74

    .line 196
    .line 197
    if-ne v0, v1, :cond_b

    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    sub-int/2addr p2, v2

    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    const/16 v0, 0x79d2

    .line 209
    .line 210
    if-ne p2, v0, :cond_a

    .line 211
    .line 212
    sget-object p2, Lc5/q0;->f:Lorg/joda/time/format/DateTimeFormatter;

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_a
    sget-object p2, Lc5/q0;->e:Lorg/joda/time/format/DateTimeFormatter;

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_b
    const v1, 0xb144

    .line 219
    .line 220
    .line 221
    if-ne v0, v1, :cond_c

    .line 222
    .line 223
    sget-object p2, Lc5/q0;->g:Lorg/joda/time/format/DateTimeFormatter;

    .line 224
    .line 225
    :cond_c
    :goto_1
    if-nez p2, :cond_d

    .line 226
    .line 227
    invoke-static {p1}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;)Lorg/joda/time/DateTime;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    goto :goto_2

    .line 232
    :cond_d
    invoke-static {p1, p2}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    :goto_2
    return-object p1
.end method
