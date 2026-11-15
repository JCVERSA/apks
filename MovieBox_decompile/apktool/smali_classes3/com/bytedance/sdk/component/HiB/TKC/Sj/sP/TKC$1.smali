.class Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC$1;
.super Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC$1;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/TKC;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected Sj(Ljava/lang/String;[B)I
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    array-length p1, p2

    .line 6
    return p1
.end method

.method protected synthetic sP(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, [B

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/TKC$1;->Sj(Ljava/lang/String;[B)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
