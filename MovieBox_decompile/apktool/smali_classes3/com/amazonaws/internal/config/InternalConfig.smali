.class public Lcom/amazonaws/internal/config/InternalConfig;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/internal/config/InternalConfig$Factory;
    }
.end annotation


# static fields
.field private static final g:Lcom/amazonaws/logging/Log;


# instance fields
.field private final a:Lcom/amazonaws/internal/config/SignerConfig;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/internal/config/InternalConfig;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/internal/config/InternalConfig;->g:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->f()Lcom/amazonaws/internal/config/SignerConfig;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->a:Lcom/amazonaws/internal/config/SignerConfig;

    .line 9
    .line 10
    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->c()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->c:Ljava/util/Map;

    .line 15
    .line 16
    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->e()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->d:Ljava/util/Map;

    .line 21
    .line 22
    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->d()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->b:Ljava/util/Map;

    .line 27
    .line 28
    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->b()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->e:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->a()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->f:Ljava/util/List;

    .line 39
    .line 40
    return-void
.end method

.method private static a()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    .line 7
    .line 8
    const-string v2, "(.+\\.)?s3\\.amazonaws\\.com"

    .line 9
    .line 10
    const-string v3, "us-east-1"

    .line 11
    .line 12
    invoke-direct {v1, v2, v3}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    .line 19
    .line 20
    const-string v2, "(.+\\.)?s3-external-1\\.amazonaws\\.com"

    .line 21
    .line 22
    invoke-direct {v1, v2, v3}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    .line 29
    .line 30
    const-string v2, "(.+\\.)?s3-fips-us-gov-west-1\\.amazonaws\\.com"

    .line 31
    .line 32
    const-string v3, "us-gov-west-1"

    .line 33
    .line 34
    invoke-direct {v1, v2, v3}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method private static b()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 7
    .line 8
    const-string v2, "monitoring"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v2, "AmazonCloudWatchClient"

    .line 14
    .line 15
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 19
    .line 20
    const-string v2, "logs"

    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v2, "AmazonCloudWatchLogsClient"

    .line 26
    .line 27
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 31
    .line 32
    const-string v2, "cognito-identity"

    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v2, "AmazonCognitoIdentityClient"

    .line 38
    .line 39
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 43
    .line 44
    const-string v2, "cognito-idp"

    .line 45
    .line 46
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v2, "AmazonCognitoIdentityProviderClient"

    .line 50
    .line 51
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 55
    .line 56
    const-string v2, "cognito-sync"

    .line 57
    .line 58
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v2, "AmazonCognitoSyncClient"

    .line 62
    .line 63
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 67
    .line 68
    const-string v2, "comprehend"

    .line 69
    .line 70
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v2, "AmazonComprehendClient"

    .line 74
    .line 75
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 79
    .line 80
    const-string v2, "connect"

    .line 81
    .line 82
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v2, "AmazonConnectClient"

    .line 86
    .line 87
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 91
    .line 92
    const-string v2, "firehose"

    .line 93
    .line 94
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v2, "AmazonKinesisFirehoseClient"

    .line 98
    .line 99
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 103
    .line 104
    const-string v2, "kinesisvideo"

    .line 105
    .line 106
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v3, "AWSKinesisVideoArchivedMediaClient"

    .line 110
    .line 111
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 115
    .line 116
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v2, "AWSKinesisVideoSignalingClient"

    .line 120
    .line 121
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 125
    .line 126
    const-string v2, "execute-api"

    .line 127
    .line 128
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v2, "AWSIotClient"

    .line 132
    .line 133
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 137
    .line 138
    const-string v2, "runtime.lex"

    .line 139
    .line 140
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v2, "AmazonLexRuntimeClient"

    .line 144
    .line 145
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 149
    .line 150
    const-string v2, "mobiletargeting"

    .line 151
    .line 152
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v2, "AmazonPinpointClient"

    .line 156
    .line 157
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 161
    .line 162
    const-string v2, "mobileanalytics"

    .line 163
    .line 164
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string v2, "AmazonPinpointAnalyticsClient"

    .line 168
    .line 169
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 173
    .line 174
    const-string v2, "sagemaker"

    .line 175
    .line 176
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v2, "AmazonSageMakerRuntimeClient"

    .line 180
    .line 181
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 185
    .line 186
    const-string v2, "sdb"

    .line 187
    .line 188
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v2, "AmazonSimpleDBClient"

    .line 192
    .line 193
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 197
    .line 198
    const-string v2, "email"

    .line 199
    .line 200
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-string v2, "AmazonSimpleEmailServiceClient"

    .line 204
    .line 205
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 209
    .line 210
    const-string v2, "sts"

    .line 211
    .line 212
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-string v2, "AWSSecurityTokenServiceClient"

    .line 216
    .line 217
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 221
    .line 222
    const-string v2, "textract"

    .line 223
    .line 224
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string v2, "AmazonTextractClient"

    .line 228
    .line 229
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 233
    .line 234
    const-string v2, "transcribe"

    .line 235
    .line 236
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string v2, "AmazonTranscribeClient"

    .line 240
    .line 241
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 245
    .line 246
    const-string v2, "translate"

    .line 247
    .line 248
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string v2, "AmazonTranslateClient"

    .line 252
    .line 253
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    return-object v0
.end method

.method private static c()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 7
    .line 8
    const-string v2, "AWS4SignerType"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v3, "eu-central-1"

    .line 14
    .line 15
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "cn-north-1"

    .line 24
    .line 25
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method private static d()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 7
    .line 8
    const-string v2, "AWSS3V4SignerType"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v3, "s3/eu-central-1"

    .line 14
    .line 15
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v3, "s3/cn-north-1"

    .line 24
    .line 25
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v3, "s3/us-east-2"

    .line 34
    .line 35
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 39
    .line 40
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v3, "s3/ca-central-1"

    .line 44
    .line 45
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 49
    .line 50
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v3, "s3/ap-south-1"

    .line 54
    .line 55
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 59
    .line 60
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v3, "s3/ap-northeast-2"

    .line 64
    .line 65
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 69
    .line 70
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v2, "s3/eu-west-2"

    .line 74
    .line 75
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-object v0
.end method

.method private static e()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 7
    .line 8
    const-string v2, "QueryStringSignerType"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v3, "ec2"

    .line 14
    .line 15
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 19
    .line 20
    const-string v3, "AWS4SignerType"

    .line 21
    .line 22
    invoke-direct {v1, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v3, "email"

    .line 26
    .line 27
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 31
    .line 32
    const-string v3, "AWSS3V4SignerType"

    .line 33
    .line 34
    invoke-direct {v1, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v3, "s3"

    .line 38
    .line 39
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 43
    .line 44
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v2, "sdb"

    .line 48
    .line 49
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 53
    .line 54
    const-string v2, "AmazonLexV4Signer"

    .line 55
    .line 56
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v2, "runtime.lex"

    .line 60
    .line 61
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 65
    .line 66
    const-string v2, "AmazonPollyCustomPresigner"

    .line 67
    .line 68
    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v2, "polly"

    .line 72
    .line 73
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    return-object v0
.end method

.method private static f()Lcom/amazonaws/internal/config/SignerConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/amazonaws/internal/config/SignerConfig;

    .line 2
    .line 3
    const-string v1, "AWS4SignerType"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public g()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->f:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/internal/config/HttpClientConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->e:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/amazonaws/internal/config/HttpClientConfig;

    .line 8
    .line 9
    return-object p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/config/SignerConfig;
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "/"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/amazonaws/internal/config/InternalConfig;->b:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/amazonaws/internal/config/SignerConfig;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->c:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Lcom/amazonaws/internal/config/SignerConfig;

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    return-object p2

    .line 47
    :cond_1
    iget-object p2, p0, Lcom/amazonaws/internal/config/InternalConfig;->d:Ljava/util/Map;

    .line 48
    .line 49
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/amazonaws/internal/config/SignerConfig;

    .line 54
    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lcom/amazonaws/internal/config/InternalConfig;->a:Lcom/amazonaws/internal/config/SignerConfig;

    .line 58
    .line 59
    :cond_2
    return-object p1

    .line 60
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 63
    .line 64
    .line 65
    throw p1
.end method
