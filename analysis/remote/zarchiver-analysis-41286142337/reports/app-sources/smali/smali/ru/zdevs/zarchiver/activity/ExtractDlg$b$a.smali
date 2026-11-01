.class public final Lru/zdevs/zarchiver/activity/ExtractDlg$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/activity/ExtractDlg$b;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/service/c;

.field public final synthetic b:Lru/zdevs/zarchiver/activity/ExtractDlg$b;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/ExtractDlg$b;Lru/zdevs/zarchiver/service/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$b$a;->b:Lru/zdevs/zarchiver/activity/ExtractDlg$b;

    iput-object p2, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$b$a;->a:Lru/zdevs/zarchiver/service/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$b$a;->b:Lru/zdevs/zarchiver/activity/ExtractDlg$b;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/activity/ExtractDlg$b;->a:Lru/zdevs/zarchiver/activity/ExtractDlg;

    .line 4
    .line 5
    iget-object v1, v1, Lru/zdevs/zarchiver/activity/ExtractDlg;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v1, v0, Lru/zdevs/zarchiver/activity/ExtractDlg$b;->a:Lru/zdevs/zarchiver/activity/ExtractDlg;

    .line 12
    .line 13
    iget-object v1, v1, Lru/zdevs/zarchiver/activity/ExtractDlg;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, La0/c;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v3, v2}, La0/c;->O(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lt0/b;->a()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-lez v2, :cond_0

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v4, "\\-mmt="

    .line 35
    .line 36
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lt0/b;->a()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string v2, ""

    .line 52
    .line 53
    :goto_0
    move-object v5, v2

    .line 54
    invoke-static {v3}, La0/c;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    invoke-static {v3}, La0/c;->Z(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    :cond_1
    new-instance v4, Lh0/h;

    .line 69
    .line 70
    invoke-static {v1, v2}, La0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-direct {v4, v6}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Lh0/h;->o()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    const/4 v6, 0x1

    .line 84
    :goto_1
    const/16 v7, 0xa

    .line 85
    .line 86
    if-ge v6, v7, :cond_2

    .line 87
    .line 88
    invoke-static {v4}, Lh0/f;->u(Lh0/h;)Lh0/f;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v7}, Lh0/f;->d()Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_2

    .line 97
    .line 98
    invoke-virtual {v7}, Lh0/f;->k()Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-nez v7, :cond_2

    .line 103
    .line 104
    new-instance v4, Lh0/h;

    .line 105
    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v8, "~"

    .line 115
    .line 116
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-static {v1, v7}, La0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-direct {v4, v7}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    add-int/lit8 v6, v6, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    move-object v7, v4

    .line 137
    :try_start_0
    iget-object v2, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$b$a;->a:Lru/zdevs/zarchiver/service/c;

    .line 138
    .line 139
    new-instance v4, Lh0/h;

    .line 140
    .line 141
    iget-object v1, v0, Lru/zdevs/zarchiver/activity/ExtractDlg$b;->a:Lru/zdevs/zarchiver/activity/ExtractDlg;

    .line 142
    .line 143
    iget-object v1, v1, Lru/zdevs/zarchiver/activity/ExtractDlg;->b:Ljava/lang/String;

    .line 144
    .line 145
    invoke-direct {v4, v1}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v6, ""

    .line 149
    .line 150
    const/4 v8, 0x0

    .line 151
    invoke-interface/range {v2 .. v8}, Lru/zdevs/zarchiver/service/c;->ArchiveExtract(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;Lh0/h;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .line 153
    .line 154
    :catch_0
    iget-object v0, v0, Lru/zdevs/zarchiver/activity/ExtractDlg$b;->a:Lru/zdevs/zarchiver/activity/ExtractDlg;

    .line 155
    .line 156
    new-instance v1, Lru/zdevs/zarchiver/activity/ExtractDlg$b$a$a;

    .line 157
    .line 158
    invoke-direct {v1, p0}, Lru/zdevs/zarchiver/activity/ExtractDlg$b$a$a;-><init>(Lru/zdevs/zarchiver/activity/ExtractDlg$b$a;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 162
    .line 163
    .line 164
    return-void
.end method
