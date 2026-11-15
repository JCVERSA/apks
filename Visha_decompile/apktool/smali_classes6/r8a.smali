.class public final synthetic Lr8a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Ljava/lang/StringBuilder;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr8a;->b:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lr8a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr8a;->b:Ljava/lang/StringBuilder;

    iget-object p0, p0, Lr8a;->c:Ljava/util/List;

    check-cast p1, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-static {v0, p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->f(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method
