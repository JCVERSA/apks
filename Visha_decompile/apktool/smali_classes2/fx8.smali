.class public final Lfx8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfx8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfx8;

    invoke-direct {v0}, Lfx8;-><init>()V

    sput-object v0, Lfx8;->a:Lfx8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    sget-object p0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/d;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0

    sget-object p0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/d;->p(Ljava/util/List;)V

    return-void
.end method
