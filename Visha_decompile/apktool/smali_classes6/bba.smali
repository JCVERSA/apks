.class public final synthetic Lbba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lbba;->b:J

    iput-boolean p3, p0, Lbba;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lbba;->b:J

    iget-boolean p0, p0, Lbba;->c:Z

    check-cast p1, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;->c(JZLcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method
