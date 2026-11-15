.class public Lcom/transsion/tools/beans/ThemeImage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public imageUri:Ljava/lang/String;

.field public isDefault:Z

.field public mergeResId:I

.field public originImageUri:Ljava/lang/String;

.field public resId:I

.field public thumbType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/transsion/tools/beans/ThemeImage;->resId:I

    .line 6
    iput-boolean p3, p0, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    .line 7
    iput p2, p0, Lcom/transsion/tools/beans/ThemeImage;->mergeResId:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/tools/beans/ThemeImage;->resId:I

    .line 3
    iput-boolean p2, p0, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/transsion/tools/beans/ThemeImage;->resId:I

    .line 10
    iput-boolean p2, p0, Lcom/transsion/tools/beans/ThemeImage;->isDefault:Z

    .line 11
    iput p3, p0, Lcom/transsion/tools/beans/ThemeImage;->thumbType:I

    return-void
.end method
