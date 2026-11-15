.class Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$1;->Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$1;->Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

    .line 2
    .line 3
    check-cast p2, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$1;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
