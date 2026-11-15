.class public final Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShowToastRunnable"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 12
    .line 13
    return-void
.end method

.method private final checkUpdateStateToast(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;)V
    .locals 8

    .line 1
    const-string v0, "check update state"

    .line 2
    .line 3
    const-string v1, "ToastStrategy"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    move-object v0, p1

    .line 13
    check-cast v0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->setToastParams(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStyle()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v2, v0, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;

    .line 27
    .line 28
    if-eqz v2, :cond_8

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->getView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v3, v2

    .line 39
    :goto_0
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-interface {p1, v3}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->findIconView(Landroid/view/View;)Landroid/widget/ImageView;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object p1, v2

    .line 47
    :goto_1
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getIcon()Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_5

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    const-wide/32 v6, 0xa00000

    .line 60
    .line 61
    .line 62
    cmp-long v4, v4, v6

    .line 63
    .line 64
    if-gez v4, :cond_4

    .line 65
    .line 66
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catchall_0
    move-exception v3

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    :goto_2
    move-object v2, v3

    .line 83
    goto :goto_4

    .line 84
    :goto_3
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_4
    if-nez v2, :cond_8

    .line 88
    .line 89
    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getDrawableResId()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_6

    .line 98
    .line 99
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getToastType()Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v1, v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->access$getStateToastIcon(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    :cond_6
    if-eqz v2, :cond_7

    .line 108
    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    .line 113
    .line 114
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    :cond_8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "ToastStrategy"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "show toast run with start"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->access$getMToastReference$p(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;)Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_0
    move-object v1, v2

    .line 28
    :goto_0
    instance-of v3, v1, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    .line 29
    .line 30
    if-eqz v3, :cond_4

    .line 31
    .line 32
    move-object v3, v1

    .line 33
    check-cast v3, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getToastParams()Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStyle()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v3, v2

    .line 47
    :goto_1
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-interface {v3}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getToastType()Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-object v3, v2

    .line 55
    :goto_2
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStyle()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getToastType()Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    move-object v4, v2

    .line 69
    :goto_3
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_4

    .line 74
    .line 75
    check-cast v1, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    .line 76
    .line 77
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->cancel()V

    .line 78
    .line 79
    .line 80
    move-object v1, v2

    .line 81
    :cond_4
    instance-of v3, v1, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    .line 82
    .line 83
    if-eqz v3, :cond_5

    .line 84
    .line 85
    move-object v3, v1

    .line 86
    check-cast v3, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->isShow()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_8

    .line 93
    .line 94
    :cond_5
    if-eqz v1, :cond_6

    .line 95
    .line 96
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->cancel()V

    .line 97
    .line 98
    .line 99
    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStyle()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_7

    .line 106
    .line 107
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->createToast(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

    .line 114
    .line 115
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 116
    .line 117
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v3}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->access$setMToastReference$p(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;Ljava/lang/ref/WeakReference;)V

    .line 121
    .line 122
    .line 123
    move-object v1, v2

    .line 124
    :cond_8
    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->checkUpdateStateToast(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;)V

    .line 125
    .line 126
    .line 127
    if-eqz v1, :cond_9

    .line 128
    .line 129
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getDuration()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-interface {v1, v2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->setDuration(I)V

    .line 136
    .line 137
    .line 138
    :cond_9
    if-eqz v1, :cond_a

    .line 139
    .line 140
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getText()Ljava/lang/CharSequence;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-interface {v1, v2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    :cond_a
    if-eqz v1, :cond_b

    .line 150
    .line 151
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->show()V

    .line 152
    .line 153
    .line 154
    :cond_b
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getShowCallBack()Lkotlin/jvm/functions/Function0;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-eqz v1, :cond_c

    .line 161
    .line 162
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :goto_4
    const-string v2, "show toast failed!"

    .line 167
    .line 168
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    :cond_c
    :goto_5
    return-void
.end method
