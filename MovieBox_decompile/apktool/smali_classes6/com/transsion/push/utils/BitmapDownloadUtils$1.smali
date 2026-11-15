.class Lcom/transsion/push/utils/BitmapDownloadUtils$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/BitmapDownloadUtils;->b(Lcom/transsion/push/bean/PushMessage;Lcom/transsion/push/utils/BitmapDownloadUtils$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/transsion/push/utils/BitmapDownloadUtils$a;

.field final synthetic val$message:Lcom/transsion/push/bean/PushMessage;


# direct methods
.method constructor <init>(Lcom/transsion/push/bean/PushMessage;Lcom/transsion/push/utils/BitmapDownloadUtils$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$listener:Lcom/transsion/push/utils/BitmapDownloadUtils$a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/transsion/push/bean/PushMessage;->notiIcon:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/transsion/push/bean/PushMessage;->notiIcon:Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/transsion/push/bean/PushMessage;->notiImgEx:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/transsion/push/bean/PushMessage;->notiImgEx:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v1, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/transsion/push/bean/PushMessage;->notiSmallIcon:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/transsion/push/bean/PushMessage;->notiSmallIcon:Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v1, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/transsion/push/bean/PushMessage;->notiOptionalIcon:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    iget-object v1, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/transsion/push/bean/PushMessage;->notiOptionalIcon:Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-gtz v1, :cond_5

    .line 79
    .line 80
    iget-object v0, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$listener:Lcom/transsion/push/utils/BitmapDownloadUtils$a;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iget-object v1, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    invoke-interface {v0, v1, v2}, Lcom/transsion/push/utils/BitmapDownloadUtils$a;->a(Lcom/transsion/push/bean/PushMessage;Ljava/util/HashMap;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    return-void

    .line 91
    :cond_5
    iget-object v1, p0, Lcom/transsion/push/utils/BitmapDownloadUtils$1;->val$message:Lcom/transsion/push/bean/PushMessage;

    .line 92
    .line 93
    iget v1, v1, Lcom/transsion/push/bean/PushMessage;->notiType:I

    .line 94
    .line 95
    new-instance v2, Lcom/transsion/push/utils/BitmapDownloadUtils$1$a;

    .line 96
    .line 97
    invoke-direct {v2, p0}, Lcom/transsion/push/utils/BitmapDownloadUtils$1$a;-><init>(Lcom/transsion/push/utils/BitmapDownloadUtils$1;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v0, v2}, Lcom/transsion/push/utils/n;->b(ILjava/util/List;Lcom/transsion/push/utils/n$d;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
