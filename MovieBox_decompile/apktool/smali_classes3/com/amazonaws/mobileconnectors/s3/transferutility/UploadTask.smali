.class Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;,
        Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lcom/amazonaws/logging/Log;

.field private static final h:Ljava/util/Map;


# instance fields
.field private final a:Lcom/amazonaws/services/s3/AmazonS3;

.field private final b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

.field private final c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private final d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

.field e:Ljava/util/Map;

.field private f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->h:Ljava/util/Map;

    .line 15
    .line 16
    invoke-static {}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->values()[Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    array-length v1, v0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v1, :cond_0

    .line 23
    .line 24
    aget-object v3, v0, v2

    .line 25
    .line 26
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->h:Ljava/util/Map;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 11
    .line 12
    new-instance p1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    .line 18
    .line 19
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 2
    .line 3
    const-string v1, "Aborting the multipart since complete multipart failed."

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 9
    .line 10
    new-instance v2, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    .line 11
    .line 12
    invoke-direct {v2, p2, p3, p4}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3;->e(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string p3, "Successfully aborted multipart upload: "

    .line 24
    .line 25
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {v0, p2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p2

    .line 40
    sget-object p3, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 41
    .line 42
    new-instance p4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v0, "Failed to abort the multipart upload: "

    .line 48
    .line 49
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p3, p1, p2}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method static synthetic b()Lcom/amazonaws/logging/Log;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 2
    .line 3
    return-object p0
.end method

.method private f(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->m(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;

    .line 8
    .line 9
    invoke-direct {v0, p2, p3, p4, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/amazonaws/services/s3/AmazonS3;->b(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private g(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 11

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->s:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v1, v2, v3, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 27
    .line 28
    .line 29
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->z:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setCacheControl(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->x:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentDisposition(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->y:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentEncoding(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->v:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->a()Lcom/amazonaws/services/s3/util/Mimetypes;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3, v0}, Lcom/amazonaws/services/s3/util/Mimetypes;->b(Ljava/io/File;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->B:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setStorageClass(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->D:Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setExpirationTimeRuleId(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_5
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->E:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    new-instance v0, Ljava/util/Date;

    .line 88
    .line 89
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->E:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setHttpExpiresDate(Ljava/util/Date;)V

    .line 103
    .line 104
    .line 105
    :cond_6
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->F:Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_7
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->C:Ljava/util/Map;

    .line 113
    .line 114
    if-eqz v0, :cond_b

    .line 115
    .line 116
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setUserMetadata(Ljava/util/Map;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->C:Ljava/util/Map;

    .line 120
    .line 121
    const-string v3, "x-amz-tagging"

    .line 122
    .line 123
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v0, :cond_9

    .line 130
    .line 131
    :try_start_0
    const-string v3, "&"

    .line 132
    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-instance v3, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .line 141
    .line 142
    array-length v4, v0

    .line 143
    const/4 v5, 0x0

    .line 144
    move v6, v5

    .line 145
    :goto_1
    if-ge v6, v4, :cond_8

    .line 146
    .line 147
    aget-object v7, v0, v6

    .line 148
    .line 149
    const-string v8, "="

    .line 150
    .line 151
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    new-instance v8, Lcom/amazonaws/services/s3/model/Tag;

    .line 156
    .line 157
    aget-object v9, v7, v5

    .line 158
    .line 159
    const/4 v10, 0x1

    .line 160
    aget-object v7, v7, v10

    .line 161
    .line 162
    invoke-direct {v8, v9, v7}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    add-int/lit8 v6, v6, 0x1

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    goto :goto_2

    .line 173
    :cond_8
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectTagging;

    .line 174
    .line 175
    invoke-direct {v0, v3}, Lcom/amazonaws/services/s3/model/ObjectTagging;-><init>(Ljava/util/List;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setTagging(Lcom/amazonaws/services/s3/model/ObjectTagging;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :goto_2
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 183
    .line 184
    const-string v4, "Error in passing the object tags as request headers."

    .line 185
    .line 186
    invoke-interface {v3, v4, v0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    :cond_9
    :goto_3
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->C:Ljava/util/Map;

    .line 190
    .line 191
    const-string v3, "x-amz-website-redirect-location"

    .line 192
    .line 193
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Ljava/lang/String;

    .line 198
    .line 199
    if-eqz v0, :cond_a

    .line 200
    .line 201
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setRedirectLocation(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_a
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->C:Ljava/util/Map;

    .line 205
    .line 206
    const-string v3, "x-amz-request-payer"

    .line 207
    .line 208
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Ljava/lang/String;

    .line 213
    .line 214
    if-eqz v0, :cond_b

    .line 215
    .line 216
    const-string v3, "requester"

    .line 217
    .line 218
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setRequesterPays(Z)V

    .line 223
    .line 224
    .line 225
    :cond_b
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->H:Ljava/lang/String;

    .line 226
    .line 227
    if-eqz v0, :cond_c

    .line 228
    .line 229
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :cond_c
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->G:Ljava/lang/String;

    .line 233
    .line 234
    if-eqz v0, :cond_d

    .line 235
    .line 236
    new-instance v3, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    .line 237
    .line 238
    invoke-direct {v3, v0}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 242
    .line 243
    .line 244
    :cond_d
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 245
    .line 246
    .line 247
    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->I:Ljava/lang/String;

    .line 248
    .line 249
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setCannedAcl(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    .line 254
    .line 255
    .line 256
    return-object v1
.end method

.method private static h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->h:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 12
    .line 13
    :goto_0
    return-object p0
.end method

.method private i(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getBucketName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getKey()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withCannedACL(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getTagging()Lcom/amazonaws/services/s3/model/ObjectTagging;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withTagging(Lcom/amazonaws/services/s3/model/ObjectTagging;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 50
    .line 51
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3;->c(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->a()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method private j()Ljava/lang/Boolean;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "]"

    .line 5
    .line 6
    const-string v4, "TransferUtilityException: ["

    .line 7
    .line 8
    const-string v5, "Network not connected. Setting the state to WAITING_FOR_NETWORK."

    .line 9
    .line 10
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    .line 13
    .line 14
    const-string v6, " due to "

    .line 15
    .line 16
    const-wide/16 v7, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 28
    .line 29
    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 30
    .line 31
    iget v9, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 32
    .line 33
    invoke-virtual {v0, v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->l(I)J

    .line 34
    .line 35
    .line 36
    move-result-wide v9

    .line 37
    cmp-long v0, v9, v7

    .line 38
    .line 39
    if-lez v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 42
    .line 43
    iget-object v11, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 44
    .line 45
    iget v11, v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 46
    .line 47
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    const/4 v13, 0x2

    .line 56
    new-array v13, v13, [Ljava/lang/Object;

    .line 57
    .line 58
    const/4 v14, 0x0

    .line 59
    aput-object v11, v13, v14

    .line 60
    .line 61
    aput-object v12, v13, v2

    .line 62
    .line 63
    const-string v11, "Resume transfer %d from %d bytes"

    .line 64
    .line 65
    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    invoke-interface {v0, v11}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    move-wide v13, v9

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 75
    .line 76
    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 81
    .line 82
    .line 83
    :try_start_0
    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 84
    .line 85
    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->i(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_4

    .line 90
    .line 91
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 92
    .line 93
    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 94
    .line 95
    iget v10, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 96
    .line 97
    iget-object v9, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v0, v10, v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->r(ILjava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-wide v13, v7

    .line 103
    :goto_1
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

    .line 104
    .line 105
    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 106
    .line 107
    invoke-direct {v0, v1, v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    .line 108
    .line 109
    .line 110
    iget-object v11, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 111
    .line 112
    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 113
    .line 114
    iget v12, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 115
    .line 116
    iget-wide v9, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    .line 117
    .line 118
    const/16 v17, 0x0

    .line 119
    .line 120
    move-wide v15, v9

    .line 121
    invoke-virtual/range {v11 .. v17}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->k(IJJZ)V

    .line 122
    .line 123
    .line 124
    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 125
    .line 126
    iget-object v10, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 127
    .line 128
    iget v11, v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 129
    .line 130
    iget-object v10, v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v9, v11, v10}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->g(ILjava/lang/String;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    iput-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->f:Ljava/util/List;

    .line 137
    .line 138
    sget-object v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 139
    .line 140
    new-instance v10, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v11, "Multipart upload "

    .line 146
    .line 147
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v11, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 151
    .line 152
    iget v11, v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 153
    .line 154
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v11, " in "

    .line 158
    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-object v11, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->f:Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v11, " parts."

    .line 172
    .line 173
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-interface {v9, v10}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->f:Ljava/util/List;

    .line 184
    .line 185
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    if-eqz v10, :cond_3

    .line 194
    .line 195
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    check-cast v10, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 200
    .line 201
    invoke-static {v10}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 202
    .line 203
    .line 204
    new-instance v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 205
    .line 206
    invoke-direct {v11, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)V

    .line 207
    .line 208
    .line 209
    iput-object v10, v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->a:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 210
    .line 211
    iput-wide v7, v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->c:J

    .line 212
    .line 213
    sget-object v12, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 214
    .line 215
    iput-object v12, v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 216
    .line 217
    iget-object v12, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    .line 218
    .line 219
    invoke-virtual {v10}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v13

    .line 227
    invoke-interface {v12, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    new-instance v12, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    .line 231
    .line 232
    iget-object v13, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 233
    .line 234
    iget-object v14, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 235
    .line 236
    move-object v15, v12

    .line 237
    move-object/from16 v16, v11

    .line 238
    .line 239
    move-object/from16 v17, v0

    .line 240
    .line 241
    move-object/from16 v18, v10

    .line 242
    .line 243
    move-object/from16 v19, v13

    .line 244
    .line 245
    move-object/from16 v20, v14

    .line 246
    .line 247
    invoke-direct/range {v15 .. v20}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V

    .line 248
    .line 249
    .line 250
    invoke-static {v12}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 251
    .line 252
    .line 253
    move-result-object v10

    .line 254
    iput-object v10, v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->b:Ljava/util/concurrent/Future;

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_3
    :try_start_1
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    .line 258
    .line 259
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    move v7, v2

    .line 268
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    if-eqz v8, :cond_4

    .line 273
    .line 274
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    check-cast v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 279
    .line 280
    iget-object v8, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->b:Ljava/util/concurrent/Future;

    .line 281
    .line 282
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    check-cast v8, Ljava/lang/Boolean;

    .line 287
    .line 288
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 289
    .line 290
    .line 291
    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    and-int/2addr v7, v8

    .line 293
    goto :goto_3

    .line 294
    :catch_0
    move-exception v0

    .line 295
    move-object v7, v0

    .line 296
    goto/16 :goto_4

    .line 297
    .line 298
    :cond_4
    if-nez v7, :cond_5

    .line 299
    .line 300
    :try_start_2
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    if-eqz v0, :cond_5

    .line 305
    .line 306
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-nez v0, :cond_5

    .line 315
    .line 316
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 317
    .line 318
    invoke-interface {v0, v5}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 322
    .line 323
    iget-object v7, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 324
    .line 325
    iget v7, v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 326
    .line 327
    sget-object v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 328
    .line 329
    invoke-virtual {v0, v7, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 330
    .line 331
    .line 332
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 333
    .line 334
    return-object v0

    .line 335
    :catch_1
    move-exception v0

    .line 336
    :try_start_3
    sget-object v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 337
    .line 338
    new-instance v8, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-interface {v7, v0}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 357
    .line 358
    .line 359
    :cond_5
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 360
    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .line 365
    .line 366
    const-string v3, "Completing the multi-part upload transfer for "

    .line 367
    .line 368
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 372
    .line 373
    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 374
    .line 375
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    :try_start_4
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 386
    .line 387
    iget v2, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 388
    .line 389
    iget-object v3, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    .line 390
    .line 391
    iget-object v4, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    .line 392
    .line 393
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    .line 394
    .line 395
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->f(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    iget-object v7, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 399
    .line 400
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 401
    .line 402
    iget v8, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 403
    .line 404
    iget-wide v11, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    .line 405
    .line 406
    const/4 v13, 0x1

    .line 407
    move-wide v9, v11

    .line 408
    invoke-virtual/range {v7 .. v13}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->k(IJJZ)V

    .line 409
    .line 410
    .line 411
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 412
    .line 413
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 414
    .line 415
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 416
    .line 417
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 418
    .line 419
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 420
    .line 421
    .line 422
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_4
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_4 .. :try_end_4} :catch_2

    .line 423
    .line 424
    return-object v0

    .line 425
    :catch_2
    move-exception v0

    .line 426
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 427
    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    const-string v4, "Failed to complete multipart: "

    .line 434
    .line 435
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 439
    .line 440
    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 441
    .line 442
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-interface {v2, v3, v0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 460
    .line 461
    .line 462
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 463
    .line 464
    iget v3, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 465
    .line 466
    iget-object v4, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    .line 467
    .line 468
    iget-object v5, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    .line 469
    .line 470
    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    .line 471
    .line 472
    invoke-direct {v1, v3, v4, v5, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 476
    .line 477
    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 478
    .line 479
    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 480
    .line 481
    invoke-virtual {v2, v3, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->i(ILjava/lang/Exception;)V

    .line 482
    .line 483
    .line 484
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 485
    .line 486
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 487
    .line 488
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 489
    .line 490
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 491
    .line 492
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 493
    .line 494
    .line 495
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 496
    .line 497
    return-object v0

    .line 498
    :goto_4
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 499
    .line 500
    new-instance v8, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .line 504
    .line 505
    const-string v9, "Upload resulted in an exception. "

    .line 506
    .line 507
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v8

    .line 517
    invoke-interface {v0, v8}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    .line 521
    .line 522
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 531
    .line 532
    .line 533
    move-result v8

    .line 534
    if-eqz v8, :cond_6

    .line 535
    .line 536
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v8

    .line 540
    check-cast v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 541
    .line 542
    iget-object v8, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->b:Ljava/util/concurrent/Future;

    .line 543
    .line 544
    invoke-interface {v8, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 545
    .line 546
    .line 547
    goto :goto_5

    .line 548
    :cond_6
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 549
    .line 550
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 551
    .line 552
    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 553
    .line 554
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    const-string v2, "Transfer is "

    .line 559
    .line 560
    if-eqz v0, :cond_7

    .line 561
    .line 562
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 563
    .line 564
    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 565
    .line 566
    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 567
    .line 568
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 569
    .line 570
    invoke-virtual {v0, v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 571
    .line 572
    .line 573
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 574
    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 591
    .line 592
    .line 593
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 594
    .line 595
    return-object v0

    .line 596
    :cond_7
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 597
    .line 598
    iget-object v8, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 599
    .line 600
    iget-object v8, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 601
    .line 602
    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    if-eqz v0, :cond_8

    .line 607
    .line 608
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 609
    .line 610
    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 611
    .line 612
    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 613
    .line 614
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 615
    .line 616
    invoke-virtual {v0, v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 617
    .line 618
    .line 619
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 620
    .line 621
    new-instance v3, Ljava/lang/StringBuilder;

    .line 622
    .line 623
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v2

    .line 636
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 640
    .line 641
    return-object v0

    .line 642
    :cond_8
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    .line 643
    .line 644
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 653
    .line 654
    .line 655
    move-result v2

    .line 656
    if-eqz v2, :cond_a

    .line 657
    .line 658
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    check-cast v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 663
    .line 664
    sget-object v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 665
    .line 666
    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 667
    .line 668
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    move-result v2

    .line 672
    if-eqz v2, :cond_9

    .line 673
    .line 674
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 675
    .line 676
    const-string v2, "Individual part is WAITING_FOR_NETWORK."

    .line 677
    .line 678
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 679
    .line 680
    .line 681
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 682
    .line 683
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 684
    .line 685
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 686
    .line 687
    invoke-virtual {v0, v2, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 688
    .line 689
    .line 690
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 691
    .line 692
    return-object v0

    .line 693
    :cond_a
    :try_start_5
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    if-eqz v0, :cond_b

    .line 698
    .line 699
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    .line 704
    .line 705
    .line 706
    move-result v0

    .line 707
    if-nez v0, :cond_b

    .line 708
    .line 709
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 710
    .line 711
    invoke-interface {v0, v5}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 712
    .line 713
    .line 714
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 715
    .line 716
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 717
    .line 718
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 719
    .line 720
    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 721
    .line 722
    invoke-virtual {v0, v2, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 723
    .line 724
    .line 725
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_5
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_5 .. :try_end_5} :catch_3

    .line 726
    .line 727
    return-object v0

    .line 728
    :catch_3
    move-exception v0

    .line 729
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 730
    .line 731
    new-instance v5, Ljava/lang/StringBuilder;

    .line 732
    .line 733
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-interface {v2, v0}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    .line 750
    .line 751
    .line 752
    :cond_b
    invoke-static {v7}, Lcom/amazonaws/retry/RetryUtils;->b(Ljava/lang/Throwable;)Z

    .line 753
    .line 754
    .line 755
    move-result v0

    .line 756
    if-eqz v0, :cond_c

    .line 757
    .line 758
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 759
    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    .line 761
    .line 762
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 763
    .line 764
    .line 765
    const-string v3, "Transfer is interrupted. "

    .line 766
    .line 767
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v2

    .line 777
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 778
    .line 779
    .line 780
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 781
    .line 782
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 783
    .line 784
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 785
    .line 786
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 787
    .line 788
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 789
    .line 790
    .line 791
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 792
    .line 793
    return-object v0

    .line 794
    :cond_c
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 795
    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    .line 797
    .line 798
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    .line 800
    .line 801
    const-string v3, "Error encountered during multi-part upload: "

    .line 802
    .line 803
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 807
    .line 808
    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 809
    .line 810
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v3

    .line 820
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v2

    .line 827
    invoke-interface {v0, v2, v7}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 828
    .line 829
    .line 830
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 831
    .line 832
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 833
    .line 834
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 835
    .line 836
    invoke-virtual {v0, v2, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->i(ILjava/lang/Exception;)V

    .line 837
    .line 838
    .line 839
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 840
    .line 841
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 842
    .line 843
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 844
    .line 845
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 846
    .line 847
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 848
    .line 849
    .line 850
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 851
    .line 852
    return-object v0

    .line 853
    :catch_4
    move-exception v0

    .line 854
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 855
    .line 856
    new-instance v3, Ljava/lang/StringBuilder;

    .line 857
    .line 858
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 859
    .line 860
    .line 861
    const-string v4, "Error initiating multipart upload: "

    .line 862
    .line 863
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 867
    .line 868
    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 869
    .line 870
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v4

    .line 880
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v3

    .line 887
    invoke-interface {v2, v3, v0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 888
    .line 889
    .line 890
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 891
    .line 892
    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 893
    .line 894
    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 895
    .line 896
    invoke-virtual {v2, v3, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->i(ILjava/lang/Exception;)V

    .line 897
    .line 898
    .line 899
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 900
    .line 901
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 902
    .line 903
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 904
    .line 905
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 906
    .line 907
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 908
    .line 909
    .line 910
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 911
    .line 912
    return-object v0
.end method

.method private k()Ljava/lang/Boolean;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 10
    .line 11
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->f(I)Lcom/amazonaws/event/ProgressListener;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/amazonaws/AmazonWebServiceRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 32
    .line 33
    invoke-interface {v2, v0}, Lcom/amazonaws/services/s3/AmazonS3;->f(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 39
    .line 40
    iget v4, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 41
    .line 42
    const/4 v9, 0x1

    .line 43
    move-wide v5, v7

    .line 44
    invoke-virtual/range {v3 .. v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->k(IJJZ)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 50
    .line 51
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 52
    .line 53
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 54
    .line 55
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 65
    .line 66
    iget-object v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const-string v3, "Transfer is "

    .line 73
    .line 74
    if-eqz v2, :cond_0

    .line 75
    .line 76
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 79
    .line 80
    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 81
    .line 82
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 85
    .line 86
    .line 87
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_0
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 111
    .line 112
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 113
    .line 114
    iget-object v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    const/16 v4, 0x20

    .line 121
    .line 122
    const-wide/16 v5, 0x0

    .line 123
    .line 124
    if-eqz v2, :cond_1

    .line 125
    .line 126
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 127
    .line 128
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 129
    .line 130
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 131
    .line 132
    sget-object v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 133
    .line 134
    invoke-virtual {v0, v2, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 135
    .line 136
    .line 137
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 138
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    .line 158
    .line 159
    invoke-direct {v0, v5, v6}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v4}, Lcom/amazonaws/event/ProgressEvent;->c(I)V

    .line 163
    .line 164
    .line 165
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    .line 166
    .line 167
    invoke-direct {v0, v5, v6}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v1, v0}, Lcom/amazonaws/event/ProgressListener;->a(Lcom/amazonaws/event/ProgressEvent;)V

    .line 171
    .line 172
    .line 173
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 174
    .line 175
    return-object v0

    .line 176
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    if-eqz v2, :cond_2

    .line 181
    .line 182
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-nez v2, :cond_2

    .line 191
    .line 192
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 193
    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v7, "Thread:["

    .line 200
    .line 201
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    .line 209
    .line 210
    .line 211
    move-result-wide v7

    .line 212
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v7, "]: Network wasn\'t available."

    .line 216
    .line 217
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 228
    .line 229
    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 230
    .line 231
    iget v7, v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 232
    .line 233
    sget-object v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 234
    .line 235
    invoke-virtual {v3, v7, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 236
    .line 237
    .line 238
    const-string v3, "Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK"

    .line 239
    .line 240
    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    new-instance v2, Lcom/amazonaws/event/ProgressEvent;

    .line 244
    .line 245
    invoke-direct {v2, v5, v6}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v4}, Lcom/amazonaws/event/ProgressEvent;->c(I)V

    .line 249
    .line 250
    .line 251
    new-instance v2, Lcom/amazonaws/event/ProgressEvent;

    .line 252
    .line 253
    invoke-direct {v2, v5, v6}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 254
    .line 255
    .line 256
    invoke-interface {v1, v2}, Lcom/amazonaws/event/ProgressListener;->a(Lcom/amazonaws/event/ProgressEvent;)V

    .line 257
    .line 258
    .line 259
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    .line 261
    return-object v0

    .line 262
    :catch_1
    move-exception v1

    .line 263
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 264
    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string v4, "TransferUtilityException: ["

    .line 271
    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v1, "]"

    .line 279
    .line 280
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-interface {v2, v1}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_2
    invoke-static {v0}, Lcom/amazonaws/retry/RetryUtils;->b(Ljava/lang/Throwable;)Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-eqz v1, :cond_3

    .line 295
    .line 296
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 297
    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string v3, "Transfer is interrupted. "

    .line 304
    .line 305
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 319
    .line 320
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 321
    .line 322
    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 323
    .line 324
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 325
    .line 326
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 327
    .line 328
    .line 329
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 330
    .line 331
    return-object v0

    .line 332
    :cond_3
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 333
    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    const-string v3, "Failed to upload: "

    .line 340
    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 345
    .line 346
    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 347
    .line 348
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v3, " due to "

    .line 352
    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 371
    .line 372
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 373
    .line 374
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 375
    .line 376
    invoke-virtual {v1, v2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->i(ILjava/lang/Exception;)V

    .line 377
    .line 378
    .line 379
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 380
    .line 381
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 382
    .line 383
    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 384
    .line 385
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 386
    .line 387
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 388
    .line 389
    .line 390
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 391
    .line 392
    return-object v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 18
    .line 19
    const-string v1, "Network not connected. Setting the state to WAITING_FOR_NETWORK."

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 27
    .line 28
    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 29
    .line 30
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "TransferUtilityException: ["

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, "]"

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 69
    .line 70
    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 71
    .line 72
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 78
    .line 79
    iget v1, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->d:I

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    if-ne v1, v2, :cond_1

    .line 83
    .line 84
    iget v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->g:I

    .line 85
    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->j()Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0

    .line 93
    :cond_1
    if-nez v1, :cond_2

    .line 94
    .line 95
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->k()Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0

    .line 100
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 101
    .line 102
    return-object v0
.end method
