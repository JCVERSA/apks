.class public Lorg/greenrobot/greendao/generator/QueryParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private column:Lorg/greenrobot/greendao/generator/Property;

.field private operator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/generator/Property;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/generator/QueryParam;->column:Lorg/greenrobot/greendao/generator/Property;

    iput-object p2, p0, Lorg/greenrobot/greendao/generator/QueryParam;->operator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColumn()Lorg/greenrobot/greendao/generator/Property;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/QueryParam;->column:Lorg/greenrobot/greendao/generator/Property;

    return-object p0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/generator/QueryParam;->operator:Ljava/lang/String;

    return-object p0
.end method
