.class public final synthetic Lkt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkt;->b:Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkt;->b:Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    invoke-static {p0}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->a(Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
