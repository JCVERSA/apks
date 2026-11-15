.class public Lcom/mgtv/ssp/utils/language/AreaInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# static fields
.field private static final serialVersionUID:J = 0x39b4ab9e8d168bfaL


# instance fields
.field public areaCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/mgtv/ssp/utils/language/AreaInfo;->areaCode:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lcom/mgtv/ssp/utils/language/AreaInfo;

    iget p0, p0, Lcom/mgtv/ssp/utils/language/AreaInfo;->areaCode:I

    invoke-direct {v0, p0}, Lcom/mgtv/ssp/utils/language/AreaInfo;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/mgtv/ssp/utils/language/AreaInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/mgtv/ssp/utils/language/AreaInfo;->areaCode:I

    check-cast p1, Lcom/mgtv/ssp/utils/language/AreaInfo;

    iget p1, p1, Lcom/mgtv/ssp/utils/language/AreaInfo;->areaCode:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/utils/language/AreaInfo;->areaCode:I

    return p0
.end method
