.class public Lcom/mgmi/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgmi/e/b;


# instance fields
.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/e/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/e/b;->b:Z

    new-instance v0, Lcom/mgmi/e/b$1;

    invoke-direct {v0, p0}, Lcom/mgmi/e/b$1;-><init>(Lcom/mgmi/e/b;)V

    iput-object v0, p0, Lcom/mgmi/e/b;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a()Lcom/mgmi/e/b;
    .locals 2

    .line 5
    sget-object v0, Lcom/mgmi/e/b;->a:Lcom/mgmi/e/b;

    if-nez v0, :cond_1

    .line 6
    const-class v0, Lcom/mgmi/e/b;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/mgmi/e/b;->a:Lcom/mgmi/e/b;

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/mgmi/e/b;

    invoke-direct {v1}, Lcom/mgmi/e/b;-><init>()V

    sput-object v1, Lcom/mgmi/e/b;->a:Lcom/mgmi/e/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgmi/e/b;->a:Lcom/mgmi/e/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/mgmi/e/c;)Ljava/lang/String;
    .locals 1

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 35
    const-string p0, "[CLICK_STATUS]"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    sget-object v0, Lcom/mgmi/e/c;->CONVERTION_TYPE_USER_CANCEL_DOWNLOAD:Lcom/mgmi/e/c;

    if-ne p2, v0, :cond_1

    .line 37
    const-string p2, "2"

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    sget-object v0, Lcom/mgmi/e/c;->CONVERTION_TYPE_DOWNLOAD_START:Lcom/mgmi/e/c;

    if-ne p2, v0, :cond_2

    .line 39
    const-string p2, "1"

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 40
    :cond_2
    sget-object v0, Lcom/mgmi/e/c;->CONVERTION_TYPE_USER_PAUSE_DOWNLOAD:Lcom/mgmi/e/c;

    if-ne p2, v0, :cond_3

    .line 41
    const-string p2, "6"

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 42
    :cond_3
    sget-object v0, Lcom/mgmi/e/c;->CONVERTION_TYPE_DOWNLOAD_COMPLETE:Lcom/mgmi/e/c;

    if-ne p2, v0, :cond_4

    .line 43
    const-string p2, "3"

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 44
    :cond_4
    sget-object v0, Lcom/mgmi/e/c;->CONVERTION_TYPE_INSTALL_COMPLETE:Lcom/mgmi/e/c;

    if-ne p2, v0, :cond_5

    .line 45
    const-string p2, "5"

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_5
    sget-object v0, Lcom/mgmi/e/c;->CONVERTION_TYPE_START_INSTALL:Lcom/mgmi/e/c;

    if-ne p2, v0, :cond_6

    .line 47
    const-string p2, "4"

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object p1
.end method

.method public static synthetic a(Lcom/mgmi/e/b;)Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/e/b;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgmi/e/b;Lcom/mgmi/e/e;Lcom/mgmi/e/c;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/e;Lcom/mgmi/e/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/e/b;Lcom/mgmi/e/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/mgmi/e/b;->a(Lcom/mgmi/e/e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/mgmi/e/e;Lcom/mgmi/e/c;)V
    .locals 3

    .line 48
    sget-object v0, Lcom/mgmi/e/c;->CONVERTION_TYPE_DOWNLOAD_START:Lcom/mgmi/e/c;

    if-ne p2, v0, :cond_3

    .line 49
    invoke-virtual {p1}, Lcom/mgmi/e/e;->k()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 52
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/mgmi/e/b;->a(Ljava/lang/String;Lcom/mgmi/e/c;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/e/e;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 58
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/mgmi/e/e;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 63
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/mgmi/e/b;->a(Ljava/lang/String;Lcom/mgmi/e/c;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {p1}, Lcom/mgmi/e/e;->c()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_f

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 69
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 70
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 71
    :cond_3
    sget-object v0, Lcom/mgmi/e/c;->CONVERTION_TYPE_DOWNLOAD_COMPLETE:Lcom/mgmi/e/c;

    if-ne p2, v0, :cond_7

    .line 72
    invoke-virtual {p1}, Lcom/mgmi/e/e;->k()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 75
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/mgmi/e/b;->a(Ljava/lang/String;Lcom/mgmi/e/c;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 78
    :cond_4
    invoke-virtual {p1}, Lcom/mgmi/e/e;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 81
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 83
    :cond_5
    invoke-virtual {p1}, Lcom/mgmi/e/e;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 86
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/mgmi/e/b;->a(Ljava/lang/String;Lcom/mgmi/e/c;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 89
    :cond_6
    invoke-virtual {p1}, Lcom/mgmi/e/e;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_f

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 92
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 93
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 94
    :cond_7
    sget-object v0, Lcom/mgmi/e/c;->CONVERTION_TYPE_START_INSTALL:Lcom/mgmi/e/c;

    if-ne p2, v0, :cond_b

    .line 95
    invoke-virtual {p1}, Lcom/mgmi/e/e;->k()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 98
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/mgmi/e/b;->a(Ljava/lang/String;Lcom/mgmi/e/c;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_8

    .line 101
    :cond_8
    invoke-virtual {p1}, Lcom/mgmi/e/e;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 104
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 105
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_9

    .line 106
    :cond_9
    invoke-virtual {p1}, Lcom/mgmi/e/e;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 109
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/mgmi/e/b;->a(Ljava/lang/String;Lcom/mgmi/e/c;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 112
    :cond_a
    invoke-virtual {p1}, Lcom/mgmi/e/e;->e()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_f

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 115
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 116
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 117
    :cond_b
    sget-object v0, Lcom/mgmi/e/c;->CONVERTION_TYPE_INSTALL_COMPLETE:Lcom/mgmi/e/c;

    if-ne p2, v0, :cond_f

    .line 118
    invoke-virtual {p1}, Lcom/mgmi/e/e;->k()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 121
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/mgmi/e/b;->a(Ljava/lang/String;Lcom/mgmi/e/c;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_c

    .line 124
    :cond_c
    invoke-virtual {p1}, Lcom/mgmi/e/e;->m()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 127
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 128
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_d

    .line 129
    :cond_d
    invoke-virtual {p1}, Lcom/mgmi/e/e;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 132
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/mgmi/e/b;->a(Ljava/lang/String;Lcom/mgmi/e/c;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_e

    .line 135
    :cond_e
    invoke-virtual {p1}, Lcom/mgmi/e/e;->f()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_f

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 138
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 139
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_f

    .line 140
    :cond_f
    invoke-virtual {p0}, Lcom/mgmi/e/b;->b()V

    return-void
.end method

.method private a(Lcom/mgmi/e/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/mgmi/e/e;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p1, p2}, Lcom/mgmi/e/e;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/mgmi/e/b;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic b(Lcom/mgmi/e/b;Lcom/mgmi/e/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/mgmi/e/b;->b(Lcom/mgmi/e/e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/mgmi/e/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/mgmi/e/e;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p1, p2}, Lcom/mgmi/e/e;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/e/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 33
    invoke-static {}, Li4d;->a()Li4d;

    move-result-object p1

    new-instance v6, Lcom/mgmi/e/b$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mgmi/e/b$2;-><init>(Lcom/mgmi/e/b;Lcom/mgmi/e/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Li4d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 11
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/mgmi/e/b;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/mgmi/e/b;->b:Z

    .line 14
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mgmi/e/b;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    :cond_1
    new-instance p1, Lcom/mgmi/e/e;

    invoke-direct {p1, p3}, Lcom/mgmi/e/e;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, p2}, Lcom/mgmi/e/e;->c(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1, p4}, Lcom/mgmi/e/e;->i(Ljava/util/List;)V

    .line 18
    invoke-virtual {p1, p6}, Lcom/mgmi/e/e;->g(Ljava/util/List;)V

    .line 19
    invoke-virtual {p1, p7}, Lcom/mgmi/e/e;->h(Ljava/util/List;)V

    .line 20
    invoke-virtual {p1, p5}, Lcom/mgmi/e/e;->f(Ljava/util/List;)V

    .line 21
    invoke-virtual {p1, p8}, Lcom/mgmi/e/e;->j(Ljava/util/List;)V

    .line 22
    invoke-virtual {p1, p9}, Lcom/mgmi/e/e;->e(Ljava/util/List;)V

    .line 23
    invoke-virtual {p1, p11}, Lcom/mgmi/e/e;->b(Ljava/util/List;)V

    .line 24
    invoke-virtual {p1, p12}, Lcom/mgmi/e/e;->c(Ljava/util/List;)V

    .line 25
    invoke-virtual {p1, p10}, Lcom/mgmi/e/e;->a(Ljava/util/List;)V

    .line 26
    invoke-virtual {p1, p13}, Lcom/mgmi/e/e;->d(Ljava/util/List;)V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/32 p4, 0x36ee80

    add-long/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgmi/e/e;->a(Ljava/lang/Long;)V

    .line 28
    iget-object p2, p0, Lcom/mgmi/e/b;->c:Ljava/util/List;

    if-nez p2, :cond_2

    .line 29
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/mgmi/e/b;->c:Ljava/util/List;

    .line 30
    :cond_2
    iget-object p0, p0, Lcom/mgmi/e/b;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/mgmi/e/b;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 9
    iget-object p0, p0, Lcom/mgmi/e/b;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/e/e;

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {v2}, Lcom/mgmi/e/e;->l()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-void
.end method
