.class public final Ly/h;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/h$a;
    }
.end annotation


# static fields
.field public static final d:Ly/h$a;

.field private static e:Z

.field private static final f:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final g:Ll0/e;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ly/h$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ly/h$a;-><init>(Lv0/g;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ly/h;->d:Ly/h$a;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Ly/h;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    new-instance v0, Ly/b;

    .line 18
    .line 19
    invoke-direct {v0}, Ly/b;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ll0/f;->b(Lu0/a;)Ll0/e;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Ly/h;->g:Ll0/e;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lv0/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x1030225

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Ly/h;->a:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method private final A()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Ll0/m;->a:Ll0/m$a;

    .line 2
    .line 3
    sget-object v0, Ly/j;->a:Ly/j;

    .line 4
    .line 5
    iget-object v1, p0, Ly/h;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ly/j;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    const-string v1, "android.intent.action.VIEW"

    .line 13
    .line 14
    sget-object v2, Ly/h;->d:Ly/h$a;

    .line 15
    .line 16
    const-string v3, "official_web_url"

    .line 17
    .line 18
    invoke-static {v2, v3}, Ly/h$a;->b(Ly/h$a;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "getContext(...)"

    .line 34
    .line 35
    invoke-static {v1, v2}, Lv0/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {v1, v0, v3, v2, v3}, Lcom/snaptube/extractor/pluginlib/utils/o;->c(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Ly/h;->b:Landroid/widget/Button;

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    const-string v0, "btnDownload"

    .line 48
    .line 49
    invoke-static {v0}, Lv0/m;->o(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    move-object v0, v3

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_2

    .line 56
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Ly/h;->c:Landroid/widget/Button;

    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    const-string v0, "btnUninstall"

    .line 65
    .line 66
    invoke-static {v0}, Lv0/m;->o(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move-object v3, v0

    .line 71
    :goto_1
    const/4 v0, 0x1

    .line 72
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 73
    .line 74
    .line 75
    sget-object v0, Ll0/w;->a:Ll0/w;

    .line 76
    .line 77
    invoke-static {v0}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :goto_2
    sget-object v1, Ll0/m;->a:Ll0/m$a;

    .line 82
    .line 83
    invoke-static {v0}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    :goto_3
    return-void
.end method

.method private final B()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Ll0/m;->a:Ll0/m$a;

    .line 2
    .line 3
    sget-object v0, Ly/j;->a:Ly/j;

    .line 4
    .line 5
    iget-object v1, p0, Ly/h;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ly/j;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Landroid/content/Intent;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const-string v2, "package"

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const/high16 v0, 0x10000000

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v2, "getContext(...)"

    .line 48
    .line 49
    invoke-static {v0, v2}, Lv0/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x4

    .line 53
    invoke-static {v0, v1, v3, v2, v3}, Lcom/snaptube/extractor/pluginlib/utils/o;->c(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Ll0/w;->a:Ll0/w;

    .line 57
    .line 58
    invoke-static {v0}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    sget-object v1, Ll0/m;->a:Ll0/m$a;

    .line 64
    .line 65
    invoke-static {v0}, Ll0/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Ll0/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method public static final C(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Ly/h;->d:Ly/h$a;

    invoke-virtual {v0, p0}, Ly/h$a;->j(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Ly/h;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Ly/h;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly/h;->s(Ly/h;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Ly/h;)Ll0/w;
    .locals 0

    .line 1
    invoke-static {p0}, Ly/h;->t(Ly/h;)Ll0/w;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ly/h;)Ll0/w;
    .locals 0

    .line 1
    invoke-static {p0}, Ly/h;->r(Ly/h;)Ll0/w;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lu0/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly/h;->n(Lu0/a;Landroid/view/View;)V

    return-void
.end method

.method private static final f()Ljava/util/Map;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "Please Install the\n"

    .line 12
    .line 13
    const-string v3, "en"

    .line 14
    .line 15
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string v2, "Por favor, instala el\n"

    .line 19
    .line 20
    const-string v4, "es"

    .line 21
    .line 22
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v2, "Por favor instale o\n"

    .line 26
    .line 27
    const-string v5, "pt"

    .line 28
    .line 29
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v2, "Veuillez installer le/la\n"

    .line 33
    .line 34
    const-string v6, "fr"

    .line 35
    .line 36
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string v2, "\u064a\u0631\u062c\u0649 \u062a\u062b\u0628\u064a\u062a\n"

    .line 40
    .line 41
    const-string v7, "ar"

    .line 42
    .line 43
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    sget-object v2, Ll0/w;->a:Ll0/w;

    .line 47
    .line 48
    const-string v2, "title_action"

    .line 49
    .line 50
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "Official %s"

    .line 59
    .line 60
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string v2, "Oficial %s"

    .line 64
    .line 65
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    const-string v2, "%s officiel"

    .line 72
    .line 73
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-string v2, "%s \u0631\u0633\u0645\u064a"

    .line 77
    .line 78
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const-string v2, "official_snaptube"

    .line 82
    .line 83
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, "Download official version from %s"

    .line 92
    .line 93
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string v2, "Descarga la versi\u00f3n oficial desde %s"

    .line 97
    .line 98
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const-string v2, "Baixe a vers\u00e3o oficial em %s"

    .line 102
    .line 103
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    const-string v2, "T\u00e9l\u00e9charger la version officielle depuis %s"

    .line 107
    .line 108
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const-string v2, "\u0642\u0645 \u0628\u062a\u062d\u0645\u064a\u0644 \u0627\u0644\u0625\u0635\u062f\u0627\u0631 \u0627\u0644\u0631\u0633\u0645\u064a \u0645\u0646 %s"

    .line 112
    .line 113
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    const-string v2, "step_one_title"

    .line 117
    .line 118
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v2, "Go to download"

    .line 127
    .line 128
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    const-string v2, "Ir a la descarga"

    .line 132
    .line 133
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    const-string v2, "Ir para baixar"

    .line 137
    .line 138
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const-string v2, "Aller t\u00e9l\u00e9charger"

    .line 142
    .line 143
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    const-string v2, "\u0627\u0646\u062a\u0642\u0644 \u0644\u0644\u062a\u062d\u0645\u064a\u0644\u0627\u062a"

    .line 147
    .line 148
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    const-string v2, "step_one_action"

    .line 152
    .line 153
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 157
    .line 158
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v2, "Uninstall current version"

    .line 162
    .line 163
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    const-string v2, "Desinstalar la versi\u00f3n actual"

    .line 167
    .line 168
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    const-string v2, "Desinstalar a vers\u00e3o atual"

    .line 172
    .line 173
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    const-string v2, "D\u00e9sinstaller la version actuelle"

    .line 177
    .line 178
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    const-string v2, "\u0625\u0632\u0627\u0644\u0629 \u0627\u0644\u0625\u0635\u062f\u0627\u0631 \u0627\u0644\u062d\u0627\u0644\u064a"

    .line 182
    .line 183
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const-string v2, "step_two_title"

    .line 187
    .line 188
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 192
    .line 193
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v2, "Go to uninstall"

    .line 197
    .line 198
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    const-string v2, "Ir a desinstalar"

    .line 202
    .line 203
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    const-string v2, "Ir para desinstalar"

    .line 207
    .line 208
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    const-string v2, "Aller d\u00e9sinstaller"

    .line 212
    .line 213
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    const-string v2, "\u0627\u0644\u0627\u0646\u062a\u0642\u0627\u0644 \u0625\u0644\u0649 \u0625\u0644\u063a\u0627\u0621 \u0627\u0644\u062a\u062b\u0628\u064a\u062a"

    .line 217
    .line 218
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    const-string v2, "step_two_action"

    .line 222
    .line 223
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 227
    .line 228
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string v2, "https://www.snaptube.com/nCs0VtlC"

    .line 232
    .line 233
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    const-string v2, "https://www.snaptube.com/Txsrmthd"

    .line 237
    .line 238
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    const-string v2, "https://snaptube-br.com/NcsbOt7w"

    .line 242
    .line 243
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    const-string v2, "https://www.snaptube.com/bJs0OtDB"

    .line 247
    .line 248
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    const-string v2, "https://www.snaptube.com/2xsnPtpp"

    .line 252
    .line 253
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    const-string v2, "official_web_url"

    .line 257
    .line 258
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    return-object v0
.end method

.method public static final synthetic g()Z
    .locals 1

    .line 1
    sget-boolean v0, Ly/h;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic h()Ll0/e;
    .locals 1

    .line 1
    sget-object v0, Ly/h;->g:Ll0/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic i()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Ly/h;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic j(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Ly/h;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final k(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Ly/h;->d:Ly/h$a;

    invoke-virtual {v0, p0}, Ly/h$a;->c(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private final l(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 15
    .line 16
    .line 17
    const/16 p1, 0x18

    .line 18
    .line 19
    invoke-static {p1}, Ly/i;->a(I)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method private final m(Ljava/lang/String;ZLu0/a;)Landroid/widget/Button;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const/high16 p1, 0x41600000    # 14.0f

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 16
    .line 17
    .line 18
    const-string p1, "#2F2F2F"

    .line 19
    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Ly/h;->u()Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Ly/f;

    .line 39
    .line 40
    invoke-direct {p1, p3}, Ly/f;-><init>(Lu0/a;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-virtual {v0, p1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method private static final n(Lu0/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lu0/a;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final o(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private final p(Landroid/widget/LinearLayout;Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const/high16 p1, 0x41800000    # 16.0f

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 16
    .line 17
    .line 18
    const-string p1, "#2F2F2F"

    .line 19
    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    const/4 p2, 0x1

    .line 29
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 30
    .line 31
    .line 32
    const/16 p1, 0x10

    .line 33
    .line 34
    invoke-static {p1}, Ly/i;->a(I)F

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    float-to-int p2, p2

    .line 39
    invoke-static {p1}, Ly/i;->a(I)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    float-to-int v1, v1

    .line 44
    invoke-static {p1}, Ly/i;->a(I)F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    float-to-int v2, v2

    .line 49
    invoke-static {p1}, Ly/i;->a(I)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    float-to-int p1, p1

    .line 54
    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method private final q()Landroid/view/View;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/widget/ScrollView;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    invoke-direct/range {p0 .. p0}, Ly/h;->y()Ljava/lang/CharSequence;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    const-string v6, "#2F2F2F"

    .line 62
    .line 63
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    const/16 v6, 0x11

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    .line 74
    .line 75
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 76
    .line 77
    const/4 v7, -0x2

    .line 78
    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    const/16 v8, 0x10

    .line 82
    .line 83
    invoke-static {v8}, Ly/i;->a(I)F

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    float-to-int v9, v9

    .line 88
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 89
    .line 90
    const/16 v9, 0x30

    .line 91
    .line 92
    invoke-static {v9}, Ly/i;->a(I)F

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    float-to-int v9, v9

    .line 97
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 98
    .line 99
    sget-object v9, Ll0/w;->a:Ll0/w;

    .line 100
    .line 101
    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    invoke-direct/range {p0 .. p0}, Ly/h;->v()Ljava/lang/CharSequence;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-direct {v0, v2, v5}, Ly/h;->p(Landroid/widget/LinearLayout;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    new-instance v6, Ly/c;

    .line 113
    .line 114
    invoke-direct {v6, v0}, Ly/c;-><init>(Ly/h;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, v2}, Ly/h;->o(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    sget-object v6, Ly/h;->d:Ly/h$a;

    .line 128
    .line 129
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    const-string v10, "getContext(...)"

    .line 134
    .line 135
    invoke-static {v9, v10}, Lv0/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v11, "guide_download"

    .line 139
    .line 140
    invoke-virtual {v6, v9, v11}, Ly/h$a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    if-eqz v11, :cond_0

    .line 149
    .line 150
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    .line 155
    .line 156
    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-static {v9, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    .line 165
    .line 166
    :cond_0
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 167
    .line 168
    const/16 v11, 0xca

    .line 169
    .line 170
    invoke-static {v11}, Ly/i;->a(I)F

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    float-to-int v12, v12

    .line 175
    const/16 v13, 0x66

    .line 176
    .line 177
    invoke-static {v13}, Ly/i;->a(I)F

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    float-to-int v14, v14

    .line 182
    invoke-direct {v9, v12, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    const-string v5, "step_one_action"

    .line 192
    .line 193
    invoke-static {v6, v5}, Ly/h$a;->b(Ly/h$a;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    new-instance v9, Ly/d;

    .line 198
    .line 199
    invoke-direct {v9, v0}, Ly/d;-><init>(Ly/h;)V

    .line 200
    .line 201
    .line 202
    invoke-direct {v0, v5, v4, v9}, Ly/h;->m(Ljava/lang/String;ZLu0/a;)Landroid/widget/Button;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    iput-object v5, v0, Ly/h;->b:Landroid/widget/Button;

    .line 207
    .line 208
    if-nez v5, :cond_1

    .line 209
    .line 210
    const-string v5, "btnDownload"

    .line 211
    .line 212
    invoke-static {v5}, Lv0/m;->o(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const/4 v5, 0x0

    .line 216
    :cond_1
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 217
    .line 218
    invoke-direct {v12, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    .line 220
    .line 221
    invoke-static {v8}, Ly/i;->a(I)F

    .line 222
    .line 223
    .line 224
    move-result v14

    .line 225
    float-to-int v14, v14

    .line 226
    invoke-static {v8}, Ly/i;->a(I)F

    .line 227
    .line 228
    .line 229
    move-result v15

    .line 230
    float-to-int v15, v15

    .line 231
    invoke-static {v8}, Ly/i;->a(I)F

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    float-to-int v9, v9

    .line 236
    invoke-static {v8}, Ly/i;->a(I)F

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    float-to-int v3, v3

    .line 241
    invoke-virtual {v12, v14, v15, v9, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    .line 246
    .line 247
    invoke-direct/range {p0 .. p0}, Ly/h;->x()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-direct {v0, v2, v3}, Ly/h;->p(Landroid/widget/LinearLayout;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 256
    .line 257
    .line 258
    invoke-direct {v0, v2}, Ly/h;->o(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-static {v5, v10}, Lv0/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const-string v9, "guide_uninstall"

    .line 270
    .line 271
    invoke-virtual {v6, v5, v9}, Ly/h$a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 276
    .line 277
    .line 278
    move-result v9

    .line 279
    if-eqz v9, :cond_2

    .line 280
    .line 281
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    .line 286
    .line 287
    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-static {v5, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 295
    .line 296
    .line 297
    :cond_2
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 298
    .line 299
    invoke-static {v11}, Ly/i;->a(I)F

    .line 300
    .line 301
    .line 302
    move-result v9

    .line 303
    float-to-int v9, v9

    .line 304
    invoke-static {v13}, Ly/i;->a(I)F

    .line 305
    .line 306
    .line 307
    move-result v10

    .line 308
    float-to-int v10, v10

    .line 309
    invoke-direct {v5, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    .line 317
    .line 318
    const-string v3, "step_two_action"

    .line 319
    .line 320
    invoke-static {v6, v3}, Ly/h$a;->b(Ly/h$a;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    new-instance v4, Ly/e;

    .line 325
    .line 326
    invoke-direct {v4, v0}, Ly/e;-><init>(Ly/h;)V

    .line 327
    .line 328
    .line 329
    const/4 v5, 0x0

    .line 330
    invoke-direct {v0, v3, v5, v4}, Ly/h;->m(Ljava/lang/String;ZLu0/a;)Landroid/widget/Button;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    iput-object v3, v0, Ly/h;->c:Landroid/widget/Button;

    .line 335
    .line 336
    if-nez v3, :cond_3

    .line 337
    .line 338
    const-string v3, "btnUninstall"

    .line 339
    .line 340
    invoke-static {v3}, Lv0/m;->o(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    const/4 v9, 0x0

    .line 344
    goto :goto_0

    .line 345
    :cond_3
    move-object v9, v3

    .line 346
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 347
    .line 348
    const/4 v4, -0x1

    .line 349
    invoke-direct {v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 350
    .line 351
    .line 352
    invoke-static {v8}, Ly/i;->a(I)F

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    float-to-int v4, v4

    .line 357
    invoke-static {v8}, Ly/i;->a(I)F

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    float-to-int v5, v5

    .line 362
    invoke-static {v8}, Ly/i;->a(I)F

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    float-to-int v6, v6

    .line 367
    invoke-static {v8}, Ly/i;->a(I)F

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    float-to-int v7, v7

    .line 372
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    .line 377
    .line 378
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 379
    .line 380
    const/4 v4, -0x1

    .line 381
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    .line 386
    .line 387
    return-object v1
.end method

.method private static final r(Ly/h;)Ll0/w;
    .locals 0

    .line 1
    invoke-direct {p0}, Ly/h;->B()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Ll0/w;->a:Ll0/w;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final s(Ly/h;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ly/h;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final t(Ly/h;)Ll0/w;
    .locals 0

    .line 1
    invoke-direct {p0}, Ly/h;->A()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Ll0/w;->a:Ll0/w;

    .line 5
    .line 6
    return-object p0
.end method

.method private final u()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, 0x10100a1

    .line 7
    .line 8
    .line 9
    filled-new-array {v1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "#FFCD22"

    .line 14
    .line 15
    invoke-direct {p0, v2}, Ly/h;->l(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v1, v1, [I

    .line 24
    .line 25
    const-string v2, "#F5F5F5"

    .line 26
    .line 27
    invoke-direct {p0, v2}, Ly/h;->l(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method private final v()Ljava/lang/CharSequence;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "1. "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lv0/r;->a:Lv0/r;

    .line 12
    .line 13
    sget-object v1, Ly/h;->d:Ly/h$a;

    .line 14
    .line 15
    const-string v2, "step_one_title"

    .line 16
    .line 17
    invoke-static {v1, v2}, Ly/h$a;->b(Ly/h$a;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    new-array v3, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v4, "Snaptube.com"

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    aput-object v4, v3, v5

    .line 28
    .line 29
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "format(...)"

    .line 38
    .line 39
    invoke-static {v1, v2}, Lv0/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v7, 0x6

    .line 50
    const/4 v8, 0x0

    .line 51
    const-string v4, "Snaptube.com"

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    move-object v3, v0

    .line 55
    invoke-static/range {v3 .. v8}, Lz0/n;->L(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v2, -0x1

    .line 60
    if-ne v1, v2, :cond_0

    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    .line 64
    .line 65
    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 69
    .line 70
    const-string v4, "#4D90FF"

    .line 71
    .line 72
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/16 v4, 0x12

    .line 84
    .line 85
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 86
    .line 87
    .line 88
    return-object v2
.end method

.method public static final w(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Ly/h;->d:Ly/h$a;

    invoke-virtual {v0, p0, p1}, Ly/h$a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final x()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "2. "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Ly/h;->d:Ly/h$a;

    .line 12
    .line 13
    const-string v2, "step_two_title"

    .line 14
    .line 15
    invoke-static {v1, v2}, Ly/h$a;->b(Ly/h$a;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method private final y()Ljava/lang/CharSequence;
    .locals 6

    .line 1
    sget-object v0, Ly/h;->d:Ly/h$a;

    .line 2
    .line 3
    const-string v1, "title_action"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ly/h$a;->b(Ly/h$a;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lv0/r;->a:Lv0/r;

    .line 10
    .line 11
    const-string v2, "official_snaptube"

    .line 12
    .line 13
    invoke-static {v0, v2}, Ly/h$a;->b(Ly/h$a;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x1

    .line 18
    new-array v3, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v4, "Snaptube"

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    aput-object v4, v3, v5

    .line 24
    .line 25
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v2, "format(...)"

    .line 34
    .line 35
    invoke-static {v0, v2}, Lv0/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Landroid/text/SpannableString;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 59
    .line 60
    const/16 v3, 0x1a

    .line 61
    .line 62
    invoke-static {v3}, Ly/i;->b(I)F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    float-to-int v3, v3

    .line 67
    invoke-direct {v0, v3, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const/16 v4, 0x11

    .line 75
    .line 76
    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 80
    .line 81
    const/16 v3, 0x20

    .line 82
    .line 83
    invoke-static {v3}, Ly/i;->b(I)F

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    float-to-int v3, v3

    .line 88
    invoke-direct {v0, v3, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    const/16 v4, 0x12

    .line 100
    .line 101
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 102
    .line 103
    .line 104
    return-object v2
.end method

.method private final z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Ly/h;->q()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Ly/j;->a:Ly/j;

    .line 22
    .line 23
    iget-object v0, p0, Ly/h;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ly/j;->d(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ly/h;->z()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
