.class Lcom/aliyun/thumbnail/ThumbnailHelper$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/thumbnail/ThumbnailHelper;->requestBitmapAtPosition(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

.field final synthetic val$info:Lcom/aliyun/thumbnail/ThumbnailInfo;

.field final synthetic val$positionMs:J


# direct methods
.method constructor <init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$info:Lcom/aliyun/thumbnail/ThumbnailInfo;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "can not get thumbnail at position:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-wide v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-wide v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    .line 23
    .line 24
    invoke-static {v0, v1, v2, v3}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$700(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;J)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onSuccess([B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$info:Lcom/aliyun/thumbnail/ThumbnailInfo;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$600(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;[B)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "can not get thumbnail at position:"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-wide v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-wide v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    .line 33
    .line 34
    invoke-static {p1, v0, v1, v2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$700(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;J)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->this$0:Lcom/aliyun/thumbnail/ThumbnailHelper;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$info:Lcom/aliyun/thumbnail/ThumbnailInfo;

    .line 41
    .line 42
    iget-wide v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper$2;->val$positionMs:J

    .line 43
    .line 44
    invoke-static {v0, v1, v2, v3, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->access$800(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;JLandroid/graphics/Bitmap;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method
