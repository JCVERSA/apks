.class public Lorg/greenrobot/greendao/generator/Index;
.super Lorg/greenrobot/greendao/generator/PropertyOrderList;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private nonDefaultName:Z

.field private unique:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/greenrobot/greendao/generator/PropertyOrderList;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/Index;->name:Ljava/lang/String;

    return-object p0
.end method

.method public isNonDefaultName()Z
    .locals 0

    iget-boolean p0, p0, Lorg/greenrobot/greendao/generator/Index;->nonDefaultName:Z

    return p0
.end method

.method public isUnique()Z
    .locals 0

    iget-boolean p0, p0, Lorg/greenrobot/greendao/generator/Index;->unique:Z

    return p0
.end method

.method public makeUnique()Lorg/greenrobot/greendao/generator/Index;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/greenrobot/greendao/generator/Index;->unique:Z

    return-object p0
.end method

.method public setDefaultName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Index;->name:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Index;->nonDefaultName:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)Lorg/greenrobot/greendao/generator/Index;
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/Index;->name:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/greenrobot/greendao/generator/Index;->nonDefaultName:Z

    return-object p0
.end method
