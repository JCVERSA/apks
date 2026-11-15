.class public final synthetic Lwaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwaa;->b:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lwaa;->b:Ljava/lang/Long;

    check-cast p1, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-static {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->y(Ljava/lang/Long;Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method
