.class public final Lcom/transsion/shorttv/ui/widget/c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/ui/widget/c$a;,
        Lcom/transsion/shorttv/ui/widget/c$b;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/shorttv/ui/widget/c$a;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/transsion/shorttv/ui/widget/c$b;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/shorttv/ui/widget/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/shorttv/ui/widget/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/shorttv/ui/widget/c;->f:Lcom/transsion/shorttv/ui/widget/c$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/transsion/shorttv/ui/widget/c$b;)V
    .locals 1

    .line 1
    const-string v0, "bubbleView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "conditionProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/c;->a:Landroid/view/View;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/c;->b:Lcom/transsion/shorttv/ui/widget/c$b;

    .line 17
    .line 18
    new-instance p1, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    .line 28
    .line 29
    new-instance p1, Lcom/transsion/shorttv/ui/widget/a;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/widget/a;-><init>(Lcom/transsion/shorttv/ui/widget/c;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/c;->d:Ljava/lang/Runnable;

    .line 35
    .line 36
    new-instance p1, Lcom/transsion/shorttv/ui/widget/b;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/widget/b;-><init>(Lcom/transsion/shorttv/ui/widget/c;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/c;->e:Ljava/lang/Runnable;

    .line 42
    .line 43
    return-void
.end method

.method public static synthetic a(Lcom/transsion/shorttv/ui/widget/c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/c;->g(Lcom/transsion/shorttv/ui/widget/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/shorttv/ui/widget/c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/c;->k(Lcom/transsion/shorttv/ui/widget/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e()J
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    mul-long/2addr v1, v3

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "getAvailableStorageBytes error: "

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/4 v5, 0x4

    .line 49
    const/4 v6, 0x0

    .line 50
    const-string v2, "DownloadGuideBubble"

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-static/range {v1 .. v6}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v1, 0x0

    .line 57
    .line 58
    :goto_0
    return-wide v1
.end method

.method private static final g(Lcom/transsion/shorttv/ui/widget/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/c;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final j()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->b:Lcom/transsion/shorttv/ui/widget/c$b;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/shorttv/ui/widget/c$b;->d()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v2, "DownloadGuideBubble"

    .line 11
    .line 12
    const-string v3, "showBubble: UI restored, showing bubble"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->a:Landroid/view/View;

    .line 19
    .line 20
    invoke-static {v0}, Lcr/b;->e(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->e:Ljava/lang/Runnable;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->e:Ljava/lang/Runnable;

    .line 33
    .line 34
    const-wide/16 v2, 0x1770

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static final k(Lcom/transsion/shorttv/ui/widget/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/c;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l()V
    .locals 8

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "DownloadGuideBubble"

    .line 6
    .line 7
    const-string v2, "tryShowBubble: checking conditions..."

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, v6

    .line 11
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->b:Lcom/transsion/shorttv/ui/widget/c$b;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/transsion/shorttv/ui/widget/c$b;->c()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v1, "DownloadGuideBubble"

    .line 25
    .line 26
    const-string v2, "tryShowBubble: SKIP - not buffering"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    move-object v0, v6

    .line 30
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    sget-object v7, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    .line 35
    .line 36
    invoke-virtual {v7}, Lcom/transsion/shorttv/utils/h;->c()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    const/4 v4, 0x4

    .line 43
    const/4 v5, 0x0

    .line 44
    const-string v1, "DownloadGuideBubble"

    .line 45
    .line 46
    const-string v2, "tryShowBubble: SKIP - fatigue control (shown within 3 days)"

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    move-object v0, v6

    .line 50
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/c;->e()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    const-wide/32 v2, 0x1f400000

    .line 59
    .line 60
    .line 61
    cmp-long v2, v0, v2

    .line 62
    .line 63
    if-gez v2, :cond_2

    .line 64
    .line 65
    const/16 v2, 0x400

    .line 66
    .line 67
    int-to-long v2, v2

    .line 68
    div-long/2addr v0, v2

    .line 69
    div-long/2addr v0, v2

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v3, "tryShowBubble: SKIP - storage insufficient ("

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, "MB < 500MB)"

    .line 84
    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const/4 v4, 0x4

    .line 93
    const/4 v5, 0x0

    .line 94
    const-string v1, "DownloadGuideBubble"

    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    move-object v0, v6

    .line 98
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->b:Lcom/transsion/shorttv/ui/widget/c$b;

    .line 103
    .line 104
    invoke-interface {v0}, Lcom/transsion/shorttv/ui/widget/c$b;->b()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->b:Lcom/transsion/shorttv/ui/widget/c$b;

    .line 109
    .line 110
    invoke-interface {v1}, Lcom/transsion/shorttv/ui/widget/c$b;->a()Lur/d;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    invoke-interface {v1, v0}, Lur/d;->f(Ljava/lang/String;)Lcom/transsion/shorttv/bean/DownloadItem;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    goto :goto_0

    .line 121
    :cond_3
    const/4 v1, 0x0

    .line 122
    :goto_0
    if-eqz v1, :cond_4

    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v2, "tryShowBubble: SKIP - video already in download list (resourceId="

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, ")"

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const/4 v4, 0x4

    .line 147
    const/4 v5, 0x0

    .line 148
    const-string v1, "DownloadGuideBubble"

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    move-object v0, v6

    .line 152
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_4
    const/4 v4, 0x4

    .line 157
    const/4 v5, 0x0

    .line 158
    const-string v1, "DownloadGuideBubble"

    .line 159
    .line 160
    const-string v2, "tryShowBubble: ALL conditions met, showing bubble!"

    .line 161
    .line 162
    const/4 v3, 0x0

    .line 163
    move-object v0, v6

    .line 164
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Lcom/transsion/shorttv/utils/h;->f()V

    .line 168
    .line 169
    .line 170
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/c;->j()V

    .line 171
    .line 172
    .line 173
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    const/4 v6, 0x4

    .line 10
    const/4 v7, 0x0

    .line 11
    const-string v3, "DownloadGuideBubble"

    .line 12
    .line 13
    const-string v4, "destroy: all callbacks cleared"

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final d()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->d:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/c;->f()V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    const/4 v6, 0x4

    .line 14
    const/4 v7, 0x0

    .line 15
    const-string v3, "DownloadGuideBubble"

    .line 16
    .line 17
    const-string v4, "dismiss: timer cancelled + bubble hidden"

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->e:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->a:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 17
    .line 18
    const/4 v5, 0x4

    .line 19
    const/4 v6, 0x0

    .line 20
    const-string v2, "DownloadGuideBubble"

    .line 21
    .line 22
    const-string v3, "hide: bubble hidden"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->a:Landroid/view/View;

    .line 29
    .line 30
    invoke-static {v0}, Lcr/b;->b(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final h()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->d:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 9
    .line 10
    const/4 v6, 0x4

    .line 11
    const/4 v7, 0x0

    .line 12
    const-string v3, "DownloadGuideBubble"

    .line 13
    .line 14
    const-string v4, "onBufferingEnd: timer cancelled"

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final i()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->d:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/c;->c:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/c;->d:Ljava/lang/Runnable;

    .line 11
    .line 12
    const-wide/16 v2, 0x1388

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 18
    .line 19
    const/4 v8, 0x4

    .line 20
    const/4 v9, 0x0

    .line 21
    const-string v5, "DownloadGuideBubble"

    .line 22
    .line 23
    const-string v6, "onBufferingStart: timer started (5000ms)"

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
