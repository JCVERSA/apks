.class abstract Lcom/amazonaws/regions/RegionDefaults;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a()Ljava/util/List;
    .locals 26

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "af-south-1"

    const-string v3, "amazonaws.com"

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    const-string v2, "autoscaling"

    const-string v4, "autoscaling.af-south-1.amazonaws.com"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v1, v2, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 5
    const-string v4, "dynamodb.af-south-1.amazonaws.com"

    const-string v7, "dynamodb"

    invoke-static {v1, v7, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 6
    const-string v4, "ec2.af-south-1.amazonaws.com"

    const-string v8, "ec2"

    invoke-static {v1, v8, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 7
    const-string v4, "elasticloadbalancing.af-south-1.amazonaws.com"

    const-string v9, "elasticloadbalancing"

    invoke-static {v1, v9, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 8
    const-string v4, "kms.af-south-1.amazonaws.com"

    const-string v10, "kms"

    invoke-static {v1, v10, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 9
    const-string v4, "lambda.af-south-1.amazonaws.com"

    const-string v11, "lambda"

    invoke-static {v1, v11, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 10
    const-string v4, "logs.af-south-1.amazonaws.com"

    const-string v12, "logs"

    invoke-static {v1, v12, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 11
    const-string v4, "s3.af-south-1.amazonaws.com"

    const-string v13, "s3"

    invoke-static {v1, v13, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 12
    const-string v4, "sns.af-south-1.amazonaws.com"

    const-string v14, "sns"

    invoke-static {v1, v14, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 13
    const-string v4, "sqs.af-south-1.amazonaws.com"

    const-string v15, "sqs"

    invoke-static {v1, v15, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 14
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "ap-northeast-1"

    invoke-direct {v1, v4, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v4, "autoscaling.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 17
    const-string v4, "cognito-identity.ap-northeast-1.amazonaws.com"

    move-object/from16 v16, v2

    const-string v2, "cognito-identity"

    invoke-static {v1, v2, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 18
    const-string v4, "cognito-idp.ap-northeast-1.amazonaws.com"

    move-object/from16 v17, v2

    const-string v2, "cognito-idp"

    invoke-static {v1, v2, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 19
    const-string v4, "cognito-sync.ap-northeast-1.amazonaws.com"

    move-object/from16 v18, v2

    const-string v2, "cognito-sync"

    invoke-static {v1, v2, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 20
    const-string v4, "data.iot.ap-northeast-1.amazonaws.com"

    move-object/from16 v19, v2

    const-string v2, "data.iot"

    invoke-static {v1, v2, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 21
    const-string v4, "dynamodb.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v7, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 22
    const-string v4, "ec2.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v8, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 23
    const-string v4, "elasticloadbalancing.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v9, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 24
    const-string v4, "firehose"

    move-object/from16 v20, v9

    const-string v9, "firehose.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v4, v9, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 25
    const-string v4, "iot.ap-northeast-1.amazonaws.com"

    const-string v9, "iot"

    invoke-static {v1, v9, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 26
    const-string v4, "kinesis.ap-northeast-1.amazonaws.com"

    move-object/from16 v21, v9

    const-string v9, "kinesis"

    invoke-static {v1, v9, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 27
    const-string v4, "kms.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v10, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 28
    const-string v4, "lambda.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v11, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 29
    const-string v4, "logs.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v12, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 30
    const-string v4, "polly.ap-northeast-1.amazonaws.com"

    move-object/from16 v22, v12

    const-string v12, "polly"

    invoke-static {v1, v12, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 31
    const-string v4, "s3.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v13, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 32
    const-string v4, "sdb"

    move-object/from16 v23, v13

    const-string v13, "sdb.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v4, v13, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 33
    const-string v4, "sns.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v14, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 34
    const-string v4, "sqs.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v15, v4, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 35
    const-string v4, "sts"

    const-string v13, "sts.amazonaws.com"

    invoke-static {v1, v4, v13, v5, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 36
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v5, "ap-northeast-2"

    invoke-direct {v1, v5, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v5, "autoscaling.ap-northeast-2.amazonaws.com"

    move-object/from16 v25, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v0

    const/4 v0, 0x0

    invoke-static {v1, v13, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 39
    const-string v5, "cognito-identity.ap-northeast-2.amazonaws.com"

    move-object/from16 v24, v13

    move-object/from16 v13, v17

    invoke-static {v1, v13, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 40
    const-string v5, "cognito-idp.ap-northeast-2.amazonaws.com"

    move-object/from16 v13, v18

    invoke-static {v1, v13, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 41
    const-string v5, "cognito-sync.ap-northeast-2.amazonaws.com"

    move-object/from16 v13, v19

    invoke-static {v1, v13, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 42
    const-string v5, "data.iot.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 43
    const-string v5, "dynamodb.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v7, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 44
    const-string v5, "ec2.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v8, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 45
    const-string v5, "elasticloadbalancing.ap-northeast-2.amazonaws.com"

    move-object/from16 v19, v2

    move-object/from16 v2, v20

    invoke-static {v1, v2, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 46
    const-string v5, "iot.ap-northeast-2.amazonaws.com"

    move-object/from16 v2, v21

    invoke-static {v1, v2, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 47
    const-string v5, "kinesis.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v9, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 48
    const-string v5, "kms.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v10, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 49
    const-string v5, "lambda.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v11, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 50
    const-string v5, "logs.ap-northeast-2.amazonaws.com"

    move-object/from16 v2, v22

    invoke-static {v1, v2, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 51
    const-string v5, "polly.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v12, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 52
    const-string v5, "s3.ap-northeast-2.amazonaws.com"

    move-object/from16 v22, v12

    move-object/from16 v12, v23

    invoke-static {v1, v12, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 53
    const-string v5, "sns.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v14, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 54
    const-string v5, "sqs.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v15, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 55
    const-string v5, "sts.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v4, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 56
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v5, "ap-south-1"

    invoke-direct {v1, v5, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v16

    .line 57
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v5, "autoscaling.ap-south-1.amazonaws.com"

    move-object/from16 v23, v3

    move-object/from16 v3, v24

    invoke-static {v1, v3, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 59
    const-string v5, "cognito-identity.ap-south-1.amazonaws.com"

    move-object/from16 v3, v17

    invoke-static {v1, v3, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 60
    const-string v5, "cognito-idp.ap-south-1.amazonaws.com"

    move-object/from16 v3, v18

    invoke-static {v1, v3, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 61
    const-string v5, "cognito-sync.ap-south-1.amazonaws.com"

    invoke-static {v1, v13, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 62
    const-string v5, "dynamodb.ap-south-1.amazonaws.com"

    invoke-static {v1, v7, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 63
    const-string v5, "ec2.ap-south-1.amazonaws.com"

    invoke-static {v1, v8, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 64
    const-string v5, "elasticloadbalancing.ap-south-1.amazonaws.com"

    move-object/from16 v18, v8

    move-object/from16 v8, v20

    invoke-static {v1, v8, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 65
    const-string v5, "kinesis.ap-south-1.amazonaws.com"

    invoke-static {v1, v9, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 66
    const-string v5, "kms.ap-south-1.amazonaws.com"

    invoke-static {v1, v10, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 67
    const-string v5, "lambda.ap-south-1.amazonaws.com"

    invoke-static {v1, v11, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 68
    const-string v5, "logs.ap-south-1.amazonaws.com"

    invoke-static {v1, v2, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 69
    const-string v5, "polly.ap-south-1.amazonaws.com"

    move-object/from16 v20, v2

    move-object/from16 v2, v22

    invoke-static {v1, v2, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 70
    const-string v5, "s3.ap-south-1.amazonaws.com"

    invoke-static {v1, v12, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 71
    const-string v5, "sns.ap-south-1.amazonaws.com"

    invoke-static {v1, v14, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 72
    const-string v5, "sqs.ap-south-1.amazonaws.com"

    invoke-static {v1, v15, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v5, v25

    .line 73
    invoke-static {v1, v4, v5, v0, v6}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 74
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v0, "ap-southeast-1"

    move-object/from16 v6, v23

    invoke-direct {v1, v0, v6}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v0, "autoscaling.ap-southeast-1.amazonaws.com"

    move-object/from16 v22, v4

    move-object/from16 v6, v24

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v6, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 77
    const-string v0, "cognito-identity.ap-southeast-1.amazonaws.com"

    move-object/from16 v6, v17

    invoke-static {v1, v6, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 78
    const-string v0, "cognito-idp.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v3, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 79
    const-string v0, "cognito-sync.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v13, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 80
    const-string v0, "data.iot.ap-southeast-1.amazonaws.com"

    move-object/from16 v17, v13

    move-object/from16 v13, v19

    invoke-static {v1, v13, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 81
    const-string v0, "dynamodb.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v7, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 82
    const-string v0, "ec2.ap-southeast-1.amazonaws.com"

    move-object/from16 v19, v7

    move-object/from16 v7, v18

    invoke-static {v1, v7, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 83
    const-string v0, "elasticloadbalancing.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v8, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 84
    const-string v0, "iot.ap-southeast-1.amazonaws.com"

    move-object/from16 v18, v8

    move-object/from16 v8, v21

    invoke-static {v1, v8, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 85
    const-string v0, "kinesis.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v9, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 86
    const-string v0, "kms.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v10, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 87
    const-string v0, "lambda.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v11, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 88
    const-string v0, "logs.ap-southeast-1.amazonaws.com"

    move-object/from16 v21, v11

    move-object/from16 v11, v20

    invoke-static {v1, v11, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 89
    const-string v0, "polly.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v2, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 90
    const-string v0, "s3.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v12, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 91
    const-string v0, "sdb"

    move-object/from16 v20, v12

    const-string v12, "sdb.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v0, v12, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 92
    const-string v0, "sns.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v14, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 93
    const-string v0, "sqs.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v15, v0, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, v22

    move-object/from16 v12, v25

    .line 94
    invoke-static {v1, v0, v12, v4, v5}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 95
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "ap-southeast-2"

    move-object/from16 v5, v23

    invoke-direct {v1, v4, v5}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 96
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v4, "autoscaling.ap-southeast-2.amazonaws.com"

    move-object/from16 v5, v24

    const/4 v0, 0x0

    const/4 v12, 0x1

    invoke-static {v1, v5, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 98
    const-string v4, "cognito-identity.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v6, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 99
    const-string v4, "cognito-idp.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v3, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 100
    const-string v4, "cognito-sync.ap-southeast-2.amazonaws.com"

    move-object/from16 v24, v3

    move-object/from16 v3, v17

    invoke-static {v1, v3, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 101
    const-string v4, "data.iot.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v13, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 102
    const-string v4, "dynamodb.ap-southeast-2.amazonaws.com"

    move-object/from16 v17, v13

    move-object/from16 v13, v19

    invoke-static {v1, v13, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 103
    const-string v4, "ec2.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v7, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 104
    const-string v4, "elasticloadbalancing.ap-southeast-2.amazonaws.com"

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    invoke-static {v1, v3, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 105
    const-string v4, "iot.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v8, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 106
    const-string v4, "kinesis.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v9, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 107
    const-string v4, "kms.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v10, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 108
    const-string v4, "lambda.ap-southeast-2.amazonaws.com"

    move-object/from16 v18, v8

    move-object/from16 v8, v21

    invoke-static {v1, v8, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 109
    const-string v4, "logs.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v11, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 110
    const-string v4, "polly.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v2, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 111
    const-string v4, "s3.ap-southeast-2.amazonaws.com"

    move-object/from16 v21, v6

    move-object/from16 v6, v20

    invoke-static {v1, v6, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 112
    const-string v4, "sdb"

    const-string v6, "sdb.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v4, v6, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 113
    const-string v4, "sns.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v14, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 114
    const-string v4, "sqs.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v15, v4, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v4, v22

    move-object/from16 v6, v25

    .line 115
    invoke-static {v1, v4, v6, v0, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 116
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v0, "ca-central-1"

    move-object/from16 v12, v23

    invoke-direct {v1, v0, v12}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v0, "autoscaling.ca-central-1.amazonaws.com"

    const/4 v4, 0x1

    const/4 v12, 0x0

    invoke-static {v1, v5, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 119
    const-string v0, "dynamodb.ca-central-1.amazonaws.com"

    invoke-static {v1, v13, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 120
    const-string v0, "ec2.ca-central-1.amazonaws.com"

    invoke-static {v1, v7, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 121
    const-string v0, "elasticloadbalancing.ca-central-1.amazonaws.com"

    invoke-static {v1, v3, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 122
    const-string v0, "kinesis.ca-central-1.amazonaws.com"

    invoke-static {v1, v9, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 123
    const-string v0, "kms.ca-central-1.amazonaws.com"

    invoke-static {v1, v10, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 124
    const-string v0, "lambda.ca-central-1.amazonaws.com"

    invoke-static {v1, v8, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 125
    const-string v0, "logs.ca-central-1.amazonaws.com"

    invoke-static {v1, v11, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 126
    const-string v0, "polly.ca-central-1.amazonaws.com"

    invoke-static {v1, v2, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 127
    const-string v0, "s3.ca-central-1.amazonaws.com"

    move-object/from16 v25, v2

    move-object/from16 v2, v20

    invoke-static {v1, v2, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 128
    const-string v0, "sns.ca-central-1.amazonaws.com"

    invoke-static {v1, v14, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 129
    const-string v0, "sqs.ca-central-1.amazonaws.com"

    invoke-static {v1, v15, v0, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, v22

    .line 130
    invoke-static {v1, v0, v6, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 131
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "eu-central-1"

    move-object/from16 v12, v23

    invoke-direct {v1, v4, v12}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 132
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v4, "autoscaling.eu-central-1.amazonaws.com"

    const/4 v12, 0x0

    const/4 v0, 0x1

    invoke-static {v1, v5, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 134
    const-string v4, "cognito-identity.eu-central-1.amazonaws.com"

    move-object/from16 v20, v5

    move-object/from16 v5, v21

    invoke-static {v1, v5, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 135
    const-string v4, "cognito-idp.eu-central-1.amazonaws.com"

    move-object/from16 v5, v24

    invoke-static {v1, v5, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 136
    const-string v4, "cognito-sync.eu-central-1.amazonaws.com"

    move-object/from16 v5, v19

    invoke-static {v1, v5, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 137
    const-string v4, "data.iot.eu-central-1.amazonaws.com"

    move-object/from16 v5, v17

    invoke-static {v1, v5, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 138
    const-string v4, "dynamodb.eu-central-1.amazonaws.com"

    invoke-static {v1, v13, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 139
    const-string v4, "ec2.eu-central-1.amazonaws.com"

    invoke-static {v1, v7, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 140
    const-string v4, "elasticloadbalancing.eu-central-1.amazonaws.com"

    invoke-static {v1, v3, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 141
    const-string v4, "firehose"

    const-string v5, "firehose.eu-central-1.amazonaws.com"

    invoke-static {v1, v4, v5, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 142
    const-string v4, "iot.eu-central-1.amazonaws.com"

    move-object/from16 v5, v18

    invoke-static {v1, v5, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 143
    const-string v4, "kinesis.eu-central-1.amazonaws.com"

    invoke-static {v1, v9, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 144
    const-string v4, "kms.eu-central-1.amazonaws.com"

    invoke-static {v1, v10, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 145
    const-string v4, "lambda.eu-central-1.amazonaws.com"

    invoke-static {v1, v8, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 146
    const-string v4, "logs.eu-central-1.amazonaws.com"

    invoke-static {v1, v11, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 147
    const-string v4, "polly.eu-central-1.amazonaws.com"

    move-object/from16 v18, v10

    move-object/from16 v10, v25

    invoke-static {v1, v10, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 148
    const-string v4, "s3.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 149
    const-string v4, "sns.eu-central-1.amazonaws.com"

    invoke-static {v1, v14, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 150
    const-string v4, "sqs.eu-central-1.amazonaws.com"

    invoke-static {v1, v15, v4, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v4, v22

    .line 151
    invoke-static {v1, v4, v6, v12, v0}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 152
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v0, "eu-south-1"

    move-object/from16 v12, v23

    invoke-direct {v1, v0, v12}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v4

    .line 154
    const-string v4, "autoscaling.eu-south-1.amazonaws.com"

    move-object/from16 v23, v6

    move-object/from16 v22, v10

    move-object/from16 v6, v20

    const/4 v10, 0x0

    move-object/from16 v20, v9

    const/4 v9, 0x1

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 155
    const-string v4, "dynamodb.eu-south-1.amazonaws.com"

    invoke-static {v1, v13, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 156
    const-string v4, "ec2.eu-south-1.amazonaws.com"

    invoke-static {v1, v7, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 157
    const-string v4, "elasticloadbalancing.eu-south-1.amazonaws.com"

    invoke-static {v1, v3, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 158
    const-string v4, "lambda.eu-south-1.amazonaws.com"

    invoke-static {v1, v8, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 159
    const-string v4, "logs.eu-south-1.amazonaws.com"

    invoke-static {v1, v11, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 160
    const-string v4, "s3.eu-south-1.amazonaws.com"

    invoke-static {v1, v2, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 161
    const-string v4, "sns.eu-south-1.amazonaws.com"

    invoke-static {v1, v14, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 162
    const-string v4, "sqs.eu-south-1.amazonaws.com"

    invoke-static {v1, v15, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 163
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "eu-west-1"

    invoke-direct {v1, v4, v12}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v4, "autoscaling.eu-west-1.amazonaws.com"

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 166
    const-string v4, "cognito-identity.eu-west-1.amazonaws.com"

    move-object/from16 v25, v6

    move-object/from16 v6, v21

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 167
    const-string v4, "cognito-idp.eu-west-1.amazonaws.com"

    move-object/from16 v6, v24

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 168
    const-string v4, "cognito-sync.eu-west-1.amazonaws.com"

    move-object/from16 v6, v19

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 169
    const-string v4, "data.iot.eu-west-1.amazonaws.com"

    move-object/from16 v6, v17

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 170
    const-string v4, "dynamodb.eu-west-1.amazonaws.com"

    invoke-static {v1, v13, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 171
    const-string v4, "ec2.eu-west-1.amazonaws.com"

    invoke-static {v1, v7, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 172
    const-string v4, "elasticloadbalancing.eu-west-1.amazonaws.com"

    invoke-static {v1, v3, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 173
    const-string v4, "email"

    const-string v6, "email.eu-west-1.amazonaws.com"

    invoke-static {v1, v4, v6, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 174
    const-string v4, "firehose"

    const-string v6, "firehose.eu-west-1.amazonaws.com"

    invoke-static {v1, v4, v6, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 175
    const-string v4, "iot.eu-west-1.amazonaws.com"

    invoke-static {v1, v5, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 176
    const-string v4, "kinesis.eu-west-1.amazonaws.com"

    move-object/from16 v6, v20

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 177
    const-string v4, "kms.eu-west-1.amazonaws.com"

    move-object/from16 v6, v18

    invoke-static {v1, v6, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 178
    const-string v4, "lambda.eu-west-1.amazonaws.com"

    invoke-static {v1, v8, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 179
    const-string v4, "logs.eu-west-1.amazonaws.com"

    invoke-static {v1, v11, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 180
    const-string v4, "machinelearning"

    move-object/from16 v18, v11

    const-string v11, "machinelearning.eu-west-1.amazonaws.com"

    invoke-static {v1, v4, v11, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 181
    const-string v4, "polly.eu-west-1.amazonaws.com"

    move-object/from16 v11, v22

    invoke-static {v1, v11, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 182
    const-string v4, "rekognition"

    const-string v11, "rekognition.eu-west-1.amazonaws.com"

    invoke-static {v1, v4, v11, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 183
    const-string v4, "s3.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 184
    const-string v4, "sdb"

    const-string v11, "sdb.eu-west-1.amazonaws.com"

    invoke-static {v1, v4, v11, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 185
    const-string v4, "sns.eu-west-1.amazonaws.com"

    invoke-static {v1, v14, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 186
    const-string v4, "sqs.eu-west-1.amazonaws.com"

    invoke-static {v1, v15, v4, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v4, v16

    move-object/from16 v11, v23

    .line 187
    invoke-static {v1, v4, v11, v10, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 188
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v9, "eu-west-2"

    invoke-direct {v1, v9, v12}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    const-string v9, "autoscaling.eu-west-2.amazonaws.com"

    move-object/from16 v23, v0

    move-object/from16 v16, v12

    move-object/from16 v0, v25

    const/4 v12, 0x1

    invoke-static {v1, v0, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 191
    const-string v9, "cognito-identity.eu-west-2.amazonaws.com"

    move-object/from16 v0, v21

    invoke-static {v1, v0, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 192
    const-string v9, "cognito-idp.eu-west-2.amazonaws.com"

    move-object/from16 v0, v24

    invoke-static {v1, v0, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 193
    const-string v9, "cognito-sync.eu-west-2.amazonaws.com"

    move-object/from16 v0, v19

    invoke-static {v1, v0, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 194
    const-string v9, "dynamodb.eu-west-2.amazonaws.com"

    invoke-static {v1, v13, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 195
    const-string v9, "ec2.eu-west-2.amazonaws.com"

    invoke-static {v1, v7, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 196
    const-string v9, "elasticloadbalancing.eu-west-2.amazonaws.com"

    invoke-static {v1, v3, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 197
    const-string v9, "iot.eu-west-2.amazonaws.com"

    invoke-static {v1, v5, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 198
    const-string v9, "kinesis.eu-west-2.amazonaws.com"

    move-object/from16 v19, v5

    move-object/from16 v5, v20

    invoke-static {v1, v5, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 199
    const-string v9, "kms.eu-west-2.amazonaws.com"

    invoke-static {v1, v6, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 200
    const-string v9, "lambda.eu-west-2.amazonaws.com"

    invoke-static {v1, v8, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 201
    const-string v9, "logs.eu-west-2.amazonaws.com"

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    invoke-static {v1, v0, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 202
    const-string v9, "polly.eu-west-2.amazonaws.com"

    move-object/from16 v0, v22

    invoke-static {v1, v0, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 203
    const-string v9, "s3.eu-west-2.amazonaws.com"

    invoke-static {v1, v2, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 204
    const-string v9, "sns.eu-west-2.amazonaws.com"

    invoke-static {v1, v14, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 205
    const-string v9, "sqs.eu-west-2.amazonaws.com"

    invoke-static {v1, v15, v9, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 206
    invoke-static {v1, v4, v11, v10, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 207
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v9, "eu-west-3"

    move-object/from16 v10, v16

    invoke-direct {v1, v9, v10}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v23

    .line 208
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v9

    .line 209
    const-string v9, "autoscaling.eu-west-3.amazonaws.com"

    move-object/from16 v22, v4

    move-object/from16 v23, v10

    move-object/from16 v10, v25

    const/4 v4, 0x0

    invoke-static {v1, v10, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 210
    const-string v9, "dynamodb.eu-west-3.amazonaws.com"

    invoke-static {v1, v13, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 211
    const-string v9, "ec2.eu-west-3.amazonaws.com"

    invoke-static {v1, v7, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 212
    const-string v9, "elasticloadbalancing.eu-west-3.amazonaws.com"

    invoke-static {v1, v3, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 213
    const-string v9, "kinesis.eu-west-3.amazonaws.com"

    invoke-static {v1, v5, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 214
    const-string v9, "kms.eu-west-3.amazonaws.com"

    invoke-static {v1, v6, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 215
    const-string v9, "lambda.eu-west-3.amazonaws.com"

    invoke-static {v1, v8, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 216
    const-string v9, "logs.eu-west-3.amazonaws.com"

    move-object/from16 v25, v8

    move-object/from16 v8, v18

    invoke-static {v1, v8, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 217
    const-string v9, "polly.eu-west-3.amazonaws.com"

    invoke-static {v1, v0, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 218
    const-string v9, "s3.eu-west-3.amazonaws.com"

    invoke-static {v1, v2, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 219
    const-string v9, "sns.eu-west-3.amazonaws.com"

    invoke-static {v1, v14, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 220
    const-string v9, "sqs.eu-west-3.amazonaws.com"

    invoke-static {v1, v15, v9, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v9, v22

    .line 221
    invoke-static {v1, v9, v11, v4, v12}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 222
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "sa-east-1"

    move-object/from16 v12, v23

    invoke-direct {v1, v4, v12}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 223
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v4, "autoscaling.sa-east-1.amazonaws.com"

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 225
    const-string v4, "dynamodb.sa-east-1.amazonaws.com"

    invoke-static {v1, v13, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 226
    const-string v4, "ec2.sa-east-1.amazonaws.com"

    invoke-static {v1, v7, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 227
    const-string v4, "elasticloadbalancing.sa-east-1.amazonaws.com"

    invoke-static {v1, v3, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 228
    const-string v4, "kinesis.sa-east-1.amazonaws.com"

    invoke-static {v1, v5, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 229
    const-string v4, "kms.sa-east-1.amazonaws.com"

    invoke-static {v1, v6, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 230
    const-string v4, "lambda.sa-east-1.amazonaws.com"

    move-object/from16 v18, v6

    move-object/from16 v6, v25

    invoke-static {v1, v6, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 231
    const-string v4, "logs.sa-east-1.amazonaws.com"

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 232
    const-string v4, "polly.sa-east-1.amazonaws.com"

    invoke-static {v1, v0, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 233
    const-string v4, "s3.sa-east-1.amazonaws.com"

    invoke-static {v1, v2, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 234
    const-string v4, "sdb"

    move-object/from16 v25, v2

    const-string v2, "sdb.sa-east-1.amazonaws.com"

    invoke-static {v1, v4, v2, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 235
    const-string v2, "sns.sa-east-1.amazonaws.com"

    invoke-static {v1, v14, v2, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 236
    const-string v2, "sqs.sa-east-1.amazonaws.com"

    invoke-static {v1, v15, v2, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v2, v22

    .line 237
    invoke-static {v1, v2, v11, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 238
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "us-east-1"

    move-object/from16 v9, v23

    invoke-direct {v1, v4, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 239
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v4, "autoscaling.us-east-1.amazonaws.com"

    const/4 v9, 0x1

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 241
    const-string v4, "cognito-identity.us-east-1.amazonaws.com"

    move-object/from16 v22, v10

    move-object/from16 v10, v21

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 242
    const-string v4, "cognito-idp.us-east-1.amazonaws.com"

    move-object/from16 v10, v24

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 243
    const-string v4, "cognito-sync.us-east-1.amazonaws.com"

    move-object/from16 v10, v20

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 244
    const-string v4, "data.iot.us-east-1.amazonaws.com"

    move-object/from16 v10, v17

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 245
    const-string v4, "dynamodb.us-east-1.amazonaws.com"

    invoke-static {v1, v13, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 246
    const-string v4, "ec2.us-east-1.amazonaws.com"

    invoke-static {v1, v7, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 247
    const-string v4, "elasticloadbalancing.us-east-1.amazonaws.com"

    invoke-static {v1, v3, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 248
    const-string v4, "email"

    const-string v10, "email.us-east-1.amazonaws.com"

    invoke-static {v1, v4, v10, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 249
    const-string v4, "firehose"

    const-string v10, "firehose.us-east-1.amazonaws.com"

    invoke-static {v1, v4, v10, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 250
    const-string v4, "iot.us-east-1.amazonaws.com"

    move-object/from16 v10, v19

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 251
    const-string v4, "kinesis.us-east-1.amazonaws.com"

    invoke-static {v1, v5, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 252
    const-string v4, "kms.us-east-1.amazonaws.com"

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    invoke-static {v1, v5, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 253
    const-string v4, "lambda.us-east-1.amazonaws.com"

    invoke-static {v1, v6, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 254
    const-string v4, "logs.us-east-1.amazonaws.com"

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 255
    const-string v4, "machinelearning"

    move-object/from16 v18, v8

    const-string v8, "machinelearning.us-east-1.amazonaws.com"

    invoke-static {v1, v4, v8, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 256
    const-string v4, "mobileanalytics"

    const-string v8, "mobileanalytics.us-east-1.amazonaws.com"

    invoke-static {v1, v4, v8, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 257
    const-string v4, "pinpoint"

    const-string v8, "pinpoint.us-east-1.amazonaws.com"

    invoke-static {v1, v4, v8, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 258
    const-string v4, "polly.us-east-1.amazonaws.com"

    invoke-static {v1, v0, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 259
    const-string v4, "rekognition"

    const-string v8, "rekognition.us-east-1.amazonaws.com"

    invoke-static {v1, v4, v8, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 260
    const-string v4, "s3.amazonaws.com"

    move-object/from16 v8, v25

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 261
    const-string v4, "sdb"

    const-string v8, "sdb.amazonaws.com"

    invoke-static {v1, v4, v8, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 262
    const-string v4, "sns.us-east-1.amazonaws.com"

    invoke-static {v1, v14, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 263
    const-string v4, "sqs.us-east-1.amazonaws.com"

    invoke-static {v1, v15, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 264
    invoke-static {v1, v2, v11, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 265
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "us-east-2"

    move-object/from16 v8, v23

    invoke-direct {v1, v4, v8}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 266
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const-string v4, "autoscaling.us-east-2.amazonaws.com"

    move-object/from16 v8, v22

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 268
    const-string v4, "cognito-identity.us-east-2.amazonaws.com"

    move-object/from16 v8, v21

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 269
    const-string v4, "cognito-idp.us-east-2.amazonaws.com"

    move-object/from16 v8, v24

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 270
    const-string v4, "cognito-sync.us-east-2.amazonaws.com"

    move-object/from16 v8, v20

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 271
    const-string v4, "dynamodb.us-east-2.amazonaws.com"

    invoke-static {v1, v13, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 272
    const-string v4, "ec2.us-east-2.amazonaws.com"

    invoke-static {v1, v7, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 273
    const-string v4, "elasticloadbalancing.us-east-2.amazonaws.com"

    invoke-static {v1, v3, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 274
    const-string v4, "firehose"

    const-string v8, "firehose.us-east-2.amazonaws.com"

    invoke-static {v1, v4, v8, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 275
    const-string v4, "iot.us-east-2.amazonaws.com"

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 276
    const-string v4, "kinesis.us-east-2.amazonaws.com"

    move-object/from16 v8, v19

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 277
    const-string v4, "kms.us-east-2.amazonaws.com"

    invoke-static {v1, v5, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 278
    const-string v4, "lambda.us-east-2.amazonaws.com"

    invoke-static {v1, v6, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 279
    const-string v4, "logs.us-east-2.amazonaws.com"

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 280
    const-string v4, "polly.us-east-2.amazonaws.com"

    invoke-static {v1, v0, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 281
    const-string v4, "s3.us-east-2.amazonaws.com"

    move-object/from16 v18, v0

    move-object/from16 v0, v25

    invoke-static {v1, v0, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 282
    const-string v4, "sns.us-east-2.amazonaws.com"

    invoke-static {v1, v14, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 283
    const-string v4, "sqs.us-east-2.amazonaws.com"

    invoke-static {v1, v15, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 284
    invoke-static {v1, v2, v11, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 285
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "us-west-1"

    move-object/from16 v9, v23

    invoke-direct {v1, v4, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 286
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v4, "autoscaling.us-west-1.amazonaws.com"

    move-object/from16 v9, v22

    move-object/from16 v22, v2

    const/4 v2, 0x1

    invoke-static {v1, v9, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 288
    const-string v4, "dynamodb.us-west-1.amazonaws.com"

    invoke-static {v1, v13, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 289
    const-string v4, "ec2.us-west-1.amazonaws.com"

    invoke-static {v1, v7, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 290
    const-string v4, "elasticloadbalancing.us-west-1.amazonaws.com"

    invoke-static {v1, v3, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 291
    const-string v4, "kinesis.us-west-1.amazonaws.com"

    invoke-static {v1, v8, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 292
    const-string v4, "kms.us-west-1.amazonaws.com"

    invoke-static {v1, v5, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 293
    const-string v4, "lambda.us-west-1.amazonaws.com"

    invoke-static {v1, v6, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 294
    const-string v4, "logs.us-west-1.amazonaws.com"

    invoke-static {v1, v10, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 295
    const-string v4, "polly.us-west-1.amazonaws.com"

    move-object/from16 v25, v10

    move-object/from16 v10, v18

    invoke-static {v1, v10, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 296
    const-string v4, "s3.us-west-1.amazonaws.com"

    invoke-static {v1, v0, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 297
    const-string v4, "sdb"

    move-object/from16 v18, v0

    const-string v0, "sdb.us-west-1.amazonaws.com"

    invoke-static {v1, v4, v0, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 298
    const-string v0, "sns.us-west-1.amazonaws.com"

    invoke-static {v1, v14, v0, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 299
    const-string v0, "sqs.us-west-1.amazonaws.com"

    invoke-static {v1, v15, v0, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, v22

    .line 300
    invoke-static {v1, v0, v11, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 301
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "us-west-2"

    move-object/from16 v2, v23

    invoke-direct {v1, v4, v2}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v16

    .line 302
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    const-string v2, "autoscaling.us-west-2.amazonaws.com"

    const/4 v4, 0x1

    invoke-static {v1, v9, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 304
    const-string v2, "cognito-identity.us-west-2.amazonaws.com"

    move-object/from16 v22, v9

    move-object/from16 v9, v21

    invoke-static {v1, v9, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 305
    const-string v2, "cognito-idp.us-west-2.amazonaws.com"

    move-object/from16 v9, v24

    invoke-static {v1, v9, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 306
    const-string v2, "cognito-sync.us-west-2.amazonaws.com"

    move-object/from16 v9, v20

    invoke-static {v1, v9, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 307
    const-string v2, "data.iot.us-west-2.amazonaws.com"

    move-object/from16 v9, v17

    invoke-static {v1, v9, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 308
    const-string v2, "dynamodb.us-west-2.amazonaws.com"

    invoke-static {v1, v13, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 309
    const-string v2, "ec2.us-west-2.amazonaws.com"

    invoke-static {v1, v7, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 310
    const-string v2, "elasticloadbalancing.us-west-2.amazonaws.com"

    invoke-static {v1, v3, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 311
    const-string v2, "email"

    const-string v9, "email.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v9, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 312
    const-string v2, "firehose"

    const-string v9, "firehose.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v9, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 313
    const-string v2, "iot.us-west-2.amazonaws.com"

    move-object/from16 v9, v19

    invoke-static {v1, v9, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 314
    const-string v2, "kinesis.us-west-2.amazonaws.com"

    invoke-static {v1, v8, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 315
    const-string v2, "kms.us-west-2.amazonaws.com"

    invoke-static {v1, v5, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 316
    const-string v2, "lambda.us-west-2.amazonaws.com"

    invoke-static {v1, v6, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 317
    const-string v2, "logs.us-west-2.amazonaws.com"

    move-object/from16 v19, v5

    move-object/from16 v5, v25

    invoke-static {v1, v5, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 318
    const-string v2, "polly.us-west-2.amazonaws.com"

    invoke-static {v1, v10, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 319
    const-string v2, "rekognition"

    move-object/from16 v25, v10

    const-string v10, "rekognition.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 320
    const-string v2, "s3.us-west-2.amazonaws.com"

    move-object/from16 v10, v18

    invoke-static {v1, v10, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 321
    const-string v2, "sdb"

    const-string v10, "sdb.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 322
    const-string v2, "sns.us-west-2.amazonaws.com"

    invoke-static {v1, v14, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 323
    const-string v2, "sqs.us-west-2.amazonaws.com"

    invoke-static {v1, v15, v2, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 324
    invoke-static {v1, v0, v11, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 325
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "cn-north-1"

    const-string v10, "amazonaws.com.cn"

    invoke-direct {v1, v2, v10}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v16

    .line 326
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    const-string v10, "autoscaling.cn-north-1.amazonaws.com.cn"

    move-object/from16 v16, v11

    move-object/from16 v11, v22

    invoke-static {v1, v11, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 328
    const-string v10, "cognito-identity.cn-north-1.amazonaws.com.cn"

    move-object/from16 v11, v21

    invoke-static {v1, v11, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 329
    const-string v10, "dynamodb.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v13, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 330
    const-string v10, "ec2.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v7, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 331
    const-string v10, "elasticloadbalancing.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v3, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 332
    const-string v10, "iot.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v9, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 333
    const-string v10, "kinesis.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v8, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 334
    const-string v10, "lambda.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v6, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 335
    const-string v10, "logs.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v5, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 336
    const-string v10, "s3.cn-north-1.amazonaws.com.cn"

    move-object/from16 v11, v18

    invoke-static {v1, v11, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 337
    const-string v10, "sns.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v14, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 338
    const-string v10, "sqs.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v15, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 339
    const-string v10, "sts.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v0, v10, v12, v4}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 340
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v10, "cn-northwest-1"

    const-string v4, "amazonaws.com.cn"

    invoke-direct {v1, v10, v4}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v4, "autoscaling.cn-northwest-1.amazonaws.com.cn"

    move-object/from16 v18, v9

    move-object/from16 v10, v22

    const/4 v9, 0x1

    invoke-static {v1, v10, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 343
    const-string v4, "dynamodb.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v13, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 344
    const-string v4, "ec2.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v7, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 345
    const-string v4, "elasticloadbalancing.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v3, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 346
    const-string v4, "kinesis.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v8, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 347
    const-string v4, "logs.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v5, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 348
    const-string v4, "s3.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v11, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 349
    const-string v4, "sns.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v14, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 350
    const-string v4, "sqs.cn-northwest-1.amazonaws.com.cn"

    invoke-static {v1, v15, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 351
    const-string v4, "sts.amazonaws.com.cn"

    invoke-static {v1, v0, v4, v12, v9}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 352
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v4, "us-gov-west-1"

    move-object/from16 v9, v23

    invoke-direct {v1, v4, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v4, "autoscaling.us-gov-west-1.amazonaws.com"

    move-object/from16 v23, v2

    const/4 v2, 0x1

    invoke-static {v1, v10, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 355
    const-string v4, "dynamodb.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v13, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 356
    const-string v4, "ec2.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v7, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 357
    const-string v4, "elasticloadbalancing.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v3, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 358
    const-string v4, "kinesis.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v8, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 359
    const-string v4, "kms.us-gov-west-1.amazonaws.com"

    move-object/from16 v22, v8

    move-object/from16 v8, v19

    invoke-static {v1, v8, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 360
    const-string v4, "lambda.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v6, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 361
    const-string v4, "logs.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v5, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 362
    const-string v4, "rekognition"

    move-object/from16 v19, v5

    const-string v5, "rekognition.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v4, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 363
    const-string v4, "s3.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v11, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 364
    const-string v4, "sns.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v14, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 365
    const-string v4, "sqs.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v15, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v4, v16

    .line 366
    invoke-static {v1, v0, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 367
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v5, "eu-north-1"

    invoke-direct {v1, v5, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v23

    .line 368
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v5

    .line 369
    const-string v5, "autoscaling.eu-north-1.amazonaws.com"

    invoke-static {v1, v10, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 370
    const-string v5, "dynamodb.eu-north-1.amazonaws.com"

    invoke-static {v1, v13, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 371
    const-string v5, "ec2.eu-north-1.amazonaws.com"

    invoke-static {v1, v7, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 372
    const-string v5, "elasticloadbalancing.eu-north-1.amazonaws.com"

    invoke-static {v1, v3, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 373
    const-string v5, "firehose"

    move-object/from16 v23, v3

    const-string v3, "firehose.eu-north-1.amazonaws.com"

    invoke-static {v1, v5, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 374
    const-string v3, "iot.eu-north-1.amazonaws.com"

    move-object/from16 v5, v18

    invoke-static {v1, v5, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 375
    const-string v3, "kinesis.eu-north-1.amazonaws.com"

    move-object/from16 v5, v22

    invoke-static {v1, v5, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 376
    const-string v3, "kms.eu-north-1.amazonaws.com"

    invoke-static {v1, v8, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 377
    const-string v3, "lambda.eu-north-1.amazonaws.com"

    invoke-static {v1, v6, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 378
    const-string v3, "logs.eu-north-1.amazonaws.com"

    move-object/from16 v22, v6

    move-object/from16 v6, v19

    invoke-static {v1, v6, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 379
    const-string v3, "s3.eu-north-1.amazonaws.com"

    invoke-static {v1, v11, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 380
    const-string v3, "sns.eu-north-1.amazonaws.com"

    invoke-static {v1, v14, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 381
    const-string v3, "sqs.eu-north-1.amazonaws.com"

    invoke-static {v1, v15, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 382
    invoke-static {v1, v0, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 383
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v3, "ap-east-1"

    invoke-direct {v1, v3, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v16

    .line 384
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    const-string v3, "autoscaling.ap-east-1.amazonaws.com"

    invoke-static {v1, v10, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 386
    const-string v3, "dynamodb.ap-east-1.amazonaws.com"

    invoke-static {v1, v13, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 387
    const-string v3, "ec2.ap-east-1.amazonaws.com"

    invoke-static {v1, v7, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 388
    const-string v3, "elasticloadbalancing.ap-east-1.amazonaws.com"

    move-object/from16 v19, v7

    move-object/from16 v7, v23

    invoke-static {v1, v7, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 389
    const-string v3, "firehose"

    const-string v7, "firehose.ap-east-1.amazonaws.com"

    invoke-static {v1, v3, v7, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 390
    const-string v3, "kinesis.ap-east-1.amazonaws.com"

    invoke-static {v1, v5, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 391
    const-string v3, "kms.ap-east-1.amazonaws.com"

    invoke-static {v1, v8, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 392
    const-string v3, "lambda.ap-east-1.amazonaws.com"

    move-object/from16 v7, v22

    invoke-static {v1, v7, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 393
    const-string v3, "logs.ap-east-1.amazonaws.com"

    invoke-static {v1, v6, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 394
    const-string v3, "polly.ap-east-1.amazonaws.com"

    move-object/from16 v22, v6

    move-object/from16 v6, v25

    invoke-static {v1, v6, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 395
    const-string v3, "s3.ap-east-1.amazonaws.com"

    invoke-static {v1, v11, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 396
    const-string v3, "sns.ap-east-1.amazonaws.com"

    invoke-static {v1, v14, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 397
    const-string v3, "sqs.ap-east-1.amazonaws.com"

    invoke-static {v1, v15, v3, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 398
    invoke-static {v1, v0, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 399
    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v3, "me-south-1"

    invoke-direct {v1, v3, v9}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v16

    .line 400
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    const-string v9, "autoscaling.me-south-1.amazonaws.com"

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 402
    const-string v9, "cognito-identity.me-south-1.amazonaws.com"

    move-object/from16 v10, v21

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 403
    const-string v9, "cognito-idp.me-south-1.amazonaws.com"

    move-object/from16 v10, v24

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 404
    const-string v9, "cognito-sync.me-south-1.amazonaws.com"

    move-object/from16 v10, v20

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 405
    const-string v9, "data.iot.me-south-1.amazonaws.com"

    move-object/from16 v10, v17

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 406
    const-string v9, "dynamodb.me-south-1.amazonaws.com"

    invoke-static {v1, v13, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 407
    const-string v9, "ec2.me-south-1.amazonaws.com"

    move-object/from16 v10, v19

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 408
    const-string v9, "elasticloadbalancing.me-south-1.amazonaws.com"

    move-object/from16 v10, v23

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 409
    const-string v9, "firehose"

    const-string v10, "firehose.me-south-1.amazonaws.com"

    invoke-static {v1, v9, v10, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 410
    const-string v9, "iot.me-south-1.amazonaws.com"

    move-object/from16 v10, v18

    invoke-static {v1, v10, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 411
    const-string v9, "kinesis.me-south-1.amazonaws.com"

    invoke-static {v1, v5, v9, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 412
    const-string v5, "kms.me-south-1.amazonaws.com"

    invoke-static {v1, v8, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 413
    const-string v5, "lambda.me-south-1.amazonaws.com"

    invoke-static {v1, v7, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 414
    const-string v5, "logs.me-south-1.amazonaws.com"

    move-object/from16 v7, v22

    invoke-static {v1, v7, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 415
    const-string v5, "polly.me-south-1.amazonaws.com"

    invoke-static {v1, v6, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 416
    const-string v5, "s3.me-south-1.amazonaws.com"

    invoke-static {v1, v11, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 417
    const-string v5, "sdb"

    const-string v6, "sdb.me-south-1.amazonaws.com"

    invoke-static {v1, v5, v6, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 418
    const-string v5, "sns.me-south-1.amazonaws.com"

    invoke-static {v1, v14, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 419
    const-string v5, "sqs.me-south-1.amazonaws.com"

    invoke-static {v1, v15, v5, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 420
    invoke-static {v1, v0, v4, v12, v2}, Lcom/amazonaws/regions/RegionDefaults;->b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v3
.end method

.method private static b(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->h()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->b()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/amazonaws/regions/Region;->c()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void
.end method
