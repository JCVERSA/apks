.class public final Lcom/cloud/config/utils/XLogUtil;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/config/utils/XLogUtil$SingletonHolder;,
        Lcom/cloud/config/utils/XLogUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nJ\"\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\nJ\u0016\u0010\u000f\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nJ \u0010\u000f\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0008\u0010\u0010\u001a\u00020\nH\u0002J\u0018\u0010\u0011\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nJ\"\u0010\u0011\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\"\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nH\u0002J,\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\u000e\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0018\u0010\u0019\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nJ\"\u0010\u0019\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0018\u0010\u001a\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nJ\"\u0010\u001a\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/cloud/config/utils/XLogUtil;",
        "",
        "()V",
        "logUtils",
        "Lcom/transsion/core/log/ObjectLogUtils;",
        "mLoggingLevel",
        "",
        "d",
        "",
        "tag",
        "",
        "id",
        "msg",
        "t",
        "",
        "e",
        "getGlobalTag",
        "i",
        "log",
        "logLevel",
        "logWithThrowable",
        "setLogSwitch",
        "isDebug",
        "",
        "shouldLog",
        "v",
        "w",
        "Companion",
        "SingletonHolder",
        "config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

.field private static final DEBUG:I = 0x3

.field private static final ERROR:I = 0x6

.field private static final INFO:I = 0x4

.field private static final JSON:I = 0x9

.field private static NET_LOG:Lcom/transsion/core/log/ObjectLogUtils; = null

.field public static final TAG:Ljava/lang/String; = "config"

.field private static final VERBOSE:I = 0x2

.field private static final WARN:I = 0x5

.field private static final log$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/cloud/config/utils/XLogUtil;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final logUtils:Lcom/transsion/core/log/ObjectLogUtils;

.field private final mLoggingLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/config/utils/XLogUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "UPDATE_N"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->p(Ljava/lang/String;)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->q(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->n(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;->m()Lcom/transsion/core/log/ObjectLogUtils;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/cloud/config/utils/XLogUtil;->NET_LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 34
    .line 35
    sget-object v0, Lcom/cloud/config/utils/XLogUtil$Companion$log$2;->INSTANCE:Lcom/cloud/config/utils/XLogUtil$Companion$log$2;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/cloud/config/utils/XLogUtil;->log$delegate:Lkotlin/Lazy;

    .line 42
    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/transsion/core/log/ObjectLogUtils$a;

    invoke-direct {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;-><init>()V

    const-string v1, "UPDATE"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->p(Ljava/lang/String;)Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->r(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->n(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;->m()Lcom/transsion/core/log/ObjectLogUtils;

    move-result-object v0

    const-string v1, "Builder().setGlobalTag(\"\u2026derSwitch(false).create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    const/4 v1, 0x2

    .line 5
    iput v1, p0, Lcom/cloud/config/utils/XLogUtil;->mLoggingLevel:I

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->x(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/config/utils/XLogUtil;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLog$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/config/utils/XLogUtil;->log$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getNET_LOG$cp()Lcom/transsion/core/log/ObjectLogUtils;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/config/utils/XLogUtil;->NET_LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setNET_LOG$cp(Lcom/transsion/core/log/ObjectLogUtils;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/config/utils/XLogUtil;->NET_LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    return-void
.end method

.method private final getGlobalTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sdk"

    .line 2
    .line 3
    return-object v0
.end method

.method private final log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/config/utils/XLogUtil;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private final logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cloud/config/utils/XLogUtil;->shouldLog(I)Z

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-eqz v3, :cond_c

    .line 9
    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/cloud/config/utils/XLogUtil;->getGlobalTag()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v4, 0x5f

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    :cond_0
    if-eq p1, v0, :cond_a

    .line 41
    .line 42
    const/4 v3, 0x3

    .line 43
    if-eq p1, v3, :cond_8

    .line 44
    .line 45
    const/4 v3, 0x4

    .line 46
    if-eq p1, v3, :cond_6

    .line 47
    .line 48
    const/4 v3, 0x5

    .line 49
    if-eq p1, v3, :cond_4

    .line 50
    .line 51
    const/4 v3, 0x6

    .line 52
    if-eq p1, v3, :cond_2

    .line 53
    .line 54
    const/16 p4, 0x9

    .line 55
    .line 56
    if-eq p1, p4, :cond_1

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    .line 61
    .line 62
    invoke-virtual {p1, p2, p3}, Lcom/transsion/core/log/ObjectLogUtils;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_2
    if-eqz p4, :cond_3

    .line 68
    .line 69
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    .line 70
    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object p3, v0, v2

    .line 74
    .line 75
    aput-object p4, v0, v1

    .line 76
    .line 77
    invoke-virtual {p1, p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_3
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    .line 83
    .line 84
    new-array p4, v1, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object p3, p4, v2

    .line 87
    .line 88
    invoke-virtual {p1, p2, p4}, Lcom/transsion/core/log/ObjectLogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    if-eqz p4, :cond_5

    .line 93
    .line 94
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    .line 95
    .line 96
    new-array v0, v0, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object p3, v0, v2

    .line 99
    .line 100
    aput-object p4, v0, v1

    .line 101
    .line 102
    invoke-virtual {p1, p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->A(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    .line 107
    .line 108
    new-array p4, v1, [Ljava/lang/Object;

    .line 109
    .line 110
    aput-object p3, p4, v2

    .line 111
    .line 112
    invoke-virtual {p1, p2, p4}, Lcom/transsion/core/log/ObjectLogUtils;->A(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_6
    if-eqz p4, :cond_7

    .line 117
    .line 118
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    .line 119
    .line 120
    new-array v0, v0, [Ljava/lang/Object;

    .line 121
    .line 122
    aput-object p3, v0, v2

    .line 123
    .line 124
    aput-object p4, v0, v1

    .line 125
    .line 126
    invoke-virtual {p1, p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_7
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    .line 131
    .line 132
    new-array p4, v1, [Ljava/lang/Object;

    .line 133
    .line 134
    aput-object p3, p4, v2

    .line 135
    .line 136
    invoke-virtual {p1, p2, p4}, Lcom/transsion/core/log/ObjectLogUtils;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_8
    if-eqz p4, :cond_9

    .line 141
    .line 142
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    .line 143
    .line 144
    new-array v0, v0, [Ljava/lang/Object;

    .line 145
    .line 146
    aput-object p3, v0, v2

    .line 147
    .line 148
    aput-object p4, v0, v1

    .line 149
    .line 150
    invoke-virtual {p1, p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_9
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    .line 155
    .line 156
    new-array p4, v1, [Ljava/lang/Object;

    .line 157
    .line 158
    aput-object p3, p4, v2

    .line 159
    .line 160
    invoke-virtual {p1, p2, p4}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_a
    if-eqz p4, :cond_b

    .line 165
    .line 166
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    .line 167
    .line 168
    new-array v0, v0, [Ljava/lang/Object;

    .line 169
    .line 170
    aput-object p3, v0, v2

    .line 171
    .line 172
    aput-object p4, v0, v1

    .line 173
    .line 174
    invoke-virtual {p1, p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_b
    iget-object p1, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    .line 179
    .line 180
    new-array p4, v1, [Ljava/lang/Object;

    .line 181
    .line 182
    aput-object p3, p4, v2

    .line 183
    .line 184
    invoke-virtual {p1, p2, p4}, Lcom/transsion/core/log/ObjectLogUtils;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .line 186
    .line 187
    :catch_0
    :cond_c
    :goto_0
    return-void
.end method

.method private final shouldLog(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/config/utils/XLogUtil;->mLoggingLevel:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method


# virtual methods
.method public final d(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getContext().getString(id)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const-string p3, "tag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x3

    .line 4
    invoke-direct {p0, p3, p1, p2}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "******"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    .line 2
    const-string v1, ""

    invoke-direct {p0, v0, v1, p1}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "******"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string p3, "tag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "msg"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "******"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x6

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p3, p1, p2, v0}, Lcom/cloud/config/utils/XLogUtil;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string p3, "tag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p3, p1, p2, v0}, Lcom/cloud/config/utils/XLogUtil;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setLogSwitch(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/config/utils/XLogUtil;->logUtils:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils;->m()Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils$a;->r(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/cloud/config/utils/XLogUtil;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/cloud/config/utils/XLogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string p3, "tag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x5

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p3, p1, p2, v0}, Lcom/cloud/config/utils/XLogUtil;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
