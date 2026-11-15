.class final synthetic Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$sam$java_util_function_BiFunction$0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final synthetic function:Ls74;


# direct methods
.method public constructor <init>(Ls74;)V
    .locals 1

    .line 1
    const-string v0, "function"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$sam$java_util_function_BiFunction$0;->function:Ls74;

    return-void
.end method

.method public synthetic constructor <init>(Ls74;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$sam$java_util_function_BiFunction$0;-><init>(Ls74;)V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$sam$java_util_function_BiFunction$0;->function:Ls74;

    invoke-interface {p0, p1, p2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
