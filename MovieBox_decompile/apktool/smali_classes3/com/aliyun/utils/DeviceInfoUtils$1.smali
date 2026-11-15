.class final Lcom/aliyun/utils/DeviceInfoUtils$1;
.super Ljava/util/TimerTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/utils/DeviceInfoUtils;->writeUUIDToFile(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$uuidFile:Ljava/io/File;

.field final synthetic val$uuidValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidFile:Ljava/io/File;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidValue:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidFile:Ljava/io/File;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidFile:Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v1, v2

    .line 23
    :goto_1
    new-instance v3, Ljava/util/Properties;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v4, "UUID"

    .line 29
    .line 30
    iget-object v5, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidValue:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    new-instance v1, Ljava/io/FileWriter;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidFile:Ljava/io/File;

    .line 40
    .line 41
    invoke-direct {v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-virtual {v3, v1, v4}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    move v0, v2

    .line 52
    :catchall_0
    :cond_2
    invoke-static {}, Lcom/aliyun/utils/DeviceInfoUtils;->access$008()I

    .line 53
    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    invoke-static {}, Lcom/aliyun/utils/DeviceInfoUtils;->access$000()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/16 v1, 0xa

    .line 62
    .line 63
    if-ge v0, v1, :cond_3

    .line 64
    .line 65
    iget-object v0, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidFile:Ljava/io/File;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/aliyun/utils/DeviceInfoUtils$1;->val$uuidValue:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v0, v1}, Lcom/aliyun/utils/DeviceInfoUtils;->access$100(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void
.end method
