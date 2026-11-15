.class public final Lwe6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwe6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwe6$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lwe6;
    .locals 0

    invoke-virtual {p0}, Lwe6$a;->b()Lwe6;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lwe6;
    .locals 0

    invoke-static {}, Lwe6;->b()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwe6;

    return-object p0
.end method

.method public final c()V
    .locals 0

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$Companion;->invalidateCachedSingleQueries()V

    return-void
.end method
