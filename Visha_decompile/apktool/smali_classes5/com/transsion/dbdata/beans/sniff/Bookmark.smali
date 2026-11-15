.class public Lcom/transsion/dbdata/beans/sniff/Bookmark;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "Bookmark"
.end annotation


# instance fields
.field public bitmap:[B
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field public id:J
    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private imageResId:I
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field private imageUri:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field private isEnable:Z
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private isLoadFromCode:Z
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "website_name"
    .end annotation
.end field

.field private sort:I
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sort"
    .end annotation
.end field

.field private type:I
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private uri:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "website_link"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->uri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->name:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->uri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->name:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->uri:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->imageResId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->uri:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->imageUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->name:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->uri:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->imageUri:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->bitmap:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->name:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->uri:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->bitmap:[B

    return-void
.end method


# virtual methods
.method public getBitmap()[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->bitmap:[B

    return-object p0
.end method

.method public getImageResId()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->imageResId:I

    return p0
.end method

.method public getImageUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->imageUri:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public isEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->isEnable:Z

    return p0
.end method

.method public isLoadFromCode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->isLoadFromCode:Z

    return p0
.end method

.method public setBitmap([B)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->bitmap:[B

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->isEnable:Z

    return-void
.end method

.method public setImageResId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->imageResId:I

    return-void
.end method

.method public setImageUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->imageUri:Ljava/lang/String;

    return-void
.end method

.method public setLoadFromCode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->isLoadFromCode:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->name:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;->uri:Ljava/lang/String;

    return-void
.end method
