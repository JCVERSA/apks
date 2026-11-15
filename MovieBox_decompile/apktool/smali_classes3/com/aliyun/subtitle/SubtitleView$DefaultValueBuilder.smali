.class public Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/subtitle/SubtitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultValueBuilder"
.end annotation


# instance fields
.field mLocation:I

.field mTextColor:Ljava/lang/String;

.field mTextSize:I

.field mTextSizePercent:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x18

    .line 5
    .line 6
    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mLocation:I

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSize:I

    .line 10
    .line 11
    const v0, 0x3da3d70a    # 0.08f

    .line 12
    .line 13
    .line 14
    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSizePercent:F

    .line 15
    .line 16
    const-string v0, "#FFFFFFFF"

    .line 17
    .line 18
    iput-object v0, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextColor:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public setColor(Ljava/lang/String;)Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocation(I)Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mLocation:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setSize(I)Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSize:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setSizePercent(F)Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSizePercent:F

    .line 2
    .line 3
    return-object p0
.end method
