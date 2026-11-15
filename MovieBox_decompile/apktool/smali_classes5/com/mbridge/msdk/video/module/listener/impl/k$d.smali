.class Lcom/mbridge/msdk/video/module/listener/impl/k$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/listener/impl/k;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/listener/impl/k;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/listener/impl/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/module/listener/impl/k$d;->a:Lcom/mbridge/msdk/video/module/listener/impl/k;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "c_r_v_f_w_s_e"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/listener/impl/k$d;->a:Lcom/mbridge/msdk/video/module/listener/impl/k;

    .line 16
    .line 17
    iget-boolean v1, v0, Lcom/mbridge/msdk/video/module/listener/impl/k;->a:Z

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v0, v0, Lcom/mbridge/msdk/video/module/listener/impl/k;->e:Lcom/mbridge/msdk/videocommon/download/a;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/listener/impl/k$d;->a:Lcom/mbridge/msdk/video/module/listener/impl/k;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/mbridge/msdk/video/module/listener/impl/k;->e:Lcom/mbridge/msdk/videocommon/download/a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/listener/impl/k$d;->a:Lcom/mbridge/msdk/video/module/listener/impl/k;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/mbridge/msdk/video/module/listener/impl/k;->e:Lcom/mbridge/msdk/videocommon/download/a;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/db/m;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/m;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/db/m;->a(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/listener/impl/k$d;->a:Lcom/mbridge/msdk/video/module/listener/impl/k;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/mbridge/msdk/video/module/listener/impl/k;->e:Lcom/mbridge/msdk/videocommon/download/a;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/download/a;->k()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/listener/impl/k$d;->a:Lcom/mbridge/msdk/video/module/listener/impl/k;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/mbridge/msdk/video/module/listener/impl/k;->e:Lcom/mbridge/msdk/videocommon/download/a;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/download/a;->k()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-instance v1, Ljava/io/File;

    .line 106
    .line 107
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_2

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_2

    .line 127
    .line 128
    const-string v0, "NotifyListener"

    .line 129
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v3, "DEL File :"

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    .line 157
    .line 158
    :cond_2
    :goto_2
    return-void
.end method
