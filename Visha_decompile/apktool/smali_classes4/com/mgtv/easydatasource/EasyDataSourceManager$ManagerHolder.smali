.class Lcom/mgtv/easydatasource/EasyDataSourceManager$ManagerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/easydatasource/EasyDataSourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManagerHolder"
.end annotation


# static fields
.field static instance:Lcom/mgtv/easydatasource/EasyDataSourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgtv/easydatasource/EasyDataSourceManager;

    invoke-direct {v0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;-><init>()V

    sput-object v0, Lcom/mgtv/easydatasource/EasyDataSourceManager$ManagerHolder;->instance:Lcom/mgtv/easydatasource/EasyDataSourceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
