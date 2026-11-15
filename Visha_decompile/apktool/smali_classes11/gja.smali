.class public final synthetic Lgja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgja;->b:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lgja;->b:Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtStreamResponse;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;->c(Lcom/transsion/onlinevideo/tiktok/repository/TiktokFeedRepository;Lcom/transsion/dbdata/beans/onlinevideo/tiktok/TtStreamResponse;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
