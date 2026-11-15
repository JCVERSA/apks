.class public final synthetic Lvo8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean;

.field public final synthetic d:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvo8;->b:Ljava/lang/String;

    iput-object p2, p0, Lvo8;->c:Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean;

    iput-object p3, p0, Lvo8;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lvo8;->b:Ljava/lang/String;

    iget-object v1, p0, Lvo8;->c:Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean;

    iget-object p0, p0, Lvo8;->d:Ljava/lang/Class;

    check-cast p1, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager;->a(Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean;Ljava/lang/Class;Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;)Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean;

    move-result-object p0

    return-object p0
.end method
