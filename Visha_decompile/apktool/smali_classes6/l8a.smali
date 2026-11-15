.class public final synthetic Ll8a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll8a;->b:Ljava/util/List;

    iput p2, p0, Ll8a;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ll8a;->b:Ljava/util/List;

    iget p0, p0, Ll8a;->c:I

    check-cast p1, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;

    invoke-static {v0, p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->g(Ljava/util/List;ILcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;)Lzfb;

    move-result-object p0

    return-object p0
.end method
