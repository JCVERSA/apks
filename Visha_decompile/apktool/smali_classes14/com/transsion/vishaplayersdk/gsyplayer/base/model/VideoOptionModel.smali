.class public Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VALUE_TYPE_INT:I = 0x0

.field public static final VALUE_TYPE_STRING:I = 0x1


# instance fields
.field category:I

.field name:Ljava/lang/String;

.field valueInt:I

.field valueString:Ljava/lang/String;

.field valueType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->category:I

    .line 3
    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->name:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->valueInt:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->valueType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->category:I

    .line 8
    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->name:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->valueString:Ljava/lang/String;

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->valueType:I

    return-void
.end method


# virtual methods
.method public getCategory()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->category:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getValueInt()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->valueInt:I

    return p0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->valueString:Ljava/lang/String;

    return-object p0
.end method

.method public getValueType()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->valueType:I

    return p0
.end method

.method public setCategory(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->category:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setValueInt(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->valueInt:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->valueType:I

    return-void
.end method

.method public setValueString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->valueString:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->valueType:I

    return-void
.end method

.method public setValueType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;->valueType:I

    return-void
.end method
