.class Lcom/aliyun/thumbnail/ThumbnailHelper$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/thumbnail/ThumbnailHelper;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;


# direct methods
.method constructor <init>(Lcom/aliyun/thumbnail/ThumbnailHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

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
    .locals 5

    .line 1
    new-instance v0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailHelper$1;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/aliyun/utils/AbsHttpHelper;->doGet(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "([a-zA-Z]+://[^/]+).*[/]"

    .line 19
    .line 20
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    iget-object v3, v0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->bytes:[B

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 50
    .line 51
    new-instance v4, Ljava/lang/String;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;->bytes:[B

    .line 54
    .line 55
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 56
    .line 57
    .line 58
    invoke-static {v3, v1, v4}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$200(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 65
    .line 66
    invoke-static {v0, v2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$302(Lcom/aliyun/thumbnail/ThumbnailHelper;[Lcom/aliyun/thumbnail/ThumbnailInfo;)[Lcom/aliyun/thumbnail/ThumbnailInfo;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 71
    .line 72
    check-cast v0, [Lcom/aliyun/thumbnail/ThumbnailInfo;

    .line 73
    .line 74
    invoke-static {v1, v0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$302(Lcom/aliyun/thumbnail/ThumbnailHelper;[Lcom/aliyun/thumbnail/ThumbnailInfo;)[Lcom/aliyun/thumbnail/ThumbnailInfo;

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$300(Lcom/aliyun/thumbnail/ThumbnailHelper;)[Lcom/aliyun/thumbnail/ThumbnailInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$400(Lcom/aliyun/thumbnail/ThumbnailHelper;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$1;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$500(Lcom/aliyun/thumbnail/ThumbnailHelper;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    return-void
.end method
