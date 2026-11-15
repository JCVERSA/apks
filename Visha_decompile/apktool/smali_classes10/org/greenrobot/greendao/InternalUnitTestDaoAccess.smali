.class public Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;Lorg/greenrobot/greendao/identityscope/IdentityScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Ljava/lang/Class<",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;TK;>;>;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScope<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {v0, p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    invoke-virtual {v0, p3}, Lorg/greenrobot/greendao/internal/DaoConfig;->setIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScope;)V

    const-class p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/AbstractDao;

    iput-object p1, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    return-void
.end method


# virtual methods
.method public getDao()Lorg/greenrobot/greendao/AbstractDao;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;TK;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    return-object p0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation

    iget-object p0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getProperties()[Lorg/greenrobot/greendao/Property;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->getProperties()[Lorg/greenrobot/greendao/Property;

    move-result-object p0

    return-object p0
.end method

.method public isEntityUpdateable()Z
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->isEntityUpdateable()Z

    move-result p0

    return p0
.end method

.method public readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TK;"
        }
    .end annotation

    iget-object p0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
