.class public final synthetic Lmt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmt;->b:Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    iput p2, p0, Lmt;->c:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmt;->b:Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;

    iget p0, p0, Lmt;->c:I

    invoke-static {v0, p0}, Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;->b(Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
