.class public final Ldn5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldn5$a;
    }
.end annotation


# static fields
.field public static final a:Ldn5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldn5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldn5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldn5;->a:Ldn5$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/LiveData;
    .locals 1

    new-instance p0, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Lrl8;)Landroidx/lifecycle/LiveData;
    .locals 2

    instance-of v0, p1, Lrl8$i;

    if-eqz v0, :cond_1

    check-cast p1, Lrl8$i;

    invoke-virtual {p1}, Lrl8$i;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->observePlayListFolderSet(Lrl8$i;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->observePlayListFolderSetNonCount(Lrl8$i;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lrl8$e;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;

    check-cast p1, Lrl8$e;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->observePlayHistory(Lrl8$e;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lrl8$f;

    if-eqz v0, :cond_3

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;

    check-cast p1, Lrl8$f;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->observePlayListElements(Lrl8$f;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lrl8$c;

    if-eqz v0, :cond_4

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;

    check-cast p1, Lrl8$c;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->observeFavoritePlayListElements(Lrl8$c;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lrl8$a;

    if-eqz v0, :cond_5

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;

    check-cast p1, Lrl8$a;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->observeConvertAudio(Lrl8$a;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lrl8$j;

    if-eqz v0, :cond_6

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;

    check-cast p1, Lrl8$j;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->observeVideoConverting(Lrl8$j;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lrl8$b;

    if-eqz v0, :cond_7

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->observeDownloadSubtitle()Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lrl8$d;

    if-eqz v0, :cond_8

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/delegate/LiveDataRepositoryDelegate;->observeAllMissingData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported query action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LiveDataQueryEngine"

    invoke-static {v0, p1}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ldn5;->a()Landroidx/lifecycle/LiveData;

    move-result-object p0

    :goto_0
    const-string p1, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.collections.List<O of com.transsion.dbdata.source.engine.LiveDataQueryEngine.executeQuery>>"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Lsl8;)Landroidx/lifecycle/LiveData;
    .locals 6

    const-string v0, "LiveDataQueryEngine"

    const-string v1, "request"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lsl8;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lsl8;->a()Lrl8;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lsl8;->a()Lrl8;

    move-result-object v2

    invoke-virtual {v2}, Lrl8;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lsl8;->b()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryBatchLiveData validation failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", input: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", output: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ldn5;->a()Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lsl8;->a()Lrl8;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryBatchLiveData processing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lsl8;->a()Lrl8;

    move-result-object v1

    invoke-virtual {p0, v1}, Ldn5;->b(Lrl8;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p1}, Lsl8;->a()Lrl8;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryBatchLiveData completed successfully for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Lsl8;->a()Lrl8;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryBatchLiveData error for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldn5;->a()Landroidx/lifecycle/LiveData;

    move-result-object v1

    :goto_1
    return-object v1
.end method
