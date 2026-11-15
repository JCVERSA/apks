.class public Lcom/transsion/dbdata/beans/ThemeData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CUSTOM_BACKGROUND_THEME:I = 0x0

.field public static final CUSTOM_BLACK_THEME:I = 0x2

.field public static final CUSTOM_WHITE_THEME:I = 0x1

.field private static final serialVersionUID:J = -0x417643026c5b044L


# instance fields
.field public backgroundType:I

.field public blur:I

.field public darkMode:I

.field public description:Ljava/lang/String;

.field public frameType:I

.field public imageMenu:I

.field public name:Ljava/lang/String;

.field public opacity:I

.field public path:Ljava/lang/String;

.field public tabPath:Ljava/lang/String;

.field public thumbPath:Ljava/lang/String;

.field public thumbType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/transsion/dbdata/beans/ThemeData;->backgroundType:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/transsion/dbdata/beans/ThemeData;->thumbType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 23
    iput v0, p0, Lcom/transsion/dbdata/beans/ThemeData;->backgroundType:I

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/transsion/dbdata/beans/ThemeData;->thumbType:I

    .line 25
    iput-object p1, p0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 17
    iput v0, p0, Lcom/transsion/dbdata/beans/ThemeData;->backgroundType:I

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/transsion/dbdata/beans/ThemeData;->thumbType:I

    .line 19
    iput-object p1, p0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/transsion/dbdata/beans/ThemeData;->imageMenu:I

    .line 21
    iput-object p3, p0, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/transsion/dbdata/beans/ThemeData;->backgroundType:I

    .line 6
    iput-object p1, p0, Lcom/transsion/dbdata/beans/ThemeData;->path:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/transsion/dbdata/beans/ThemeData;->thumbType:I

    .line 9
    iput-object p4, p0, Lcom/transsion/dbdata/beans/ThemeData;->thumbPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lcom/transsion/dbdata/beans/ThemeData;->backgroundType:I

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/transsion/dbdata/beans/ThemeData;->thumbType:I

    .line 13
    iput-object p1, p0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/transsion/dbdata/beans/ThemeData;->path:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThemeData{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/ThemeData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/ThemeData;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/ThemeData;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
