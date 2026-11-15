.class public Lcom/bytedance/adsdk/sP/TEQ;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/sP/TEQ$Sj;
    }
.end annotation


# instance fields
.field private final Dq:Ljava/lang/String;

.field private final EjP:Ljava/lang/String;

.field private final HiB:Ljava/lang/String;

.field private final Jcg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TEQ$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private final Sj:I

.field private final TEQ:Lorg/json/JSONArray;

.field private final TKC:Ljava/lang/String;

.field private Ym:Landroid/graphics/Bitmap;

.field private final sP:I

.field private final uA:[[I

.field private final vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;[[ILorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TEQ$Sj;",
            ">;",
            "Ljava/lang/String;",
            "[[I",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/bytedance/adsdk/sP/TEQ;->Sj:I

    .line 5
    .line 6
    iput p2, p0, Lcom/bytedance/adsdk/sP/TEQ;->sP:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/adsdk/sP/TEQ;->TKC:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bytedance/adsdk/sP/TEQ;->EjP:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/bytedance/adsdk/sP/TEQ;->HiB:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/bytedance/adsdk/sP/TEQ;->vS:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/bytedance/adsdk/sP/TEQ;->Jcg:Ljava/util/List;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/bytedance/adsdk/sP/TEQ;->Dq:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/bytedance/adsdk/sP/TEQ;->uA:[[I

    .line 21
    .line 22
    iput-object p10, p0, Lcom/bytedance/adsdk/sP/TEQ;->TEQ:Lorg/json/JSONArray;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public Dq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->TKC:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public EjP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->vS:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public HiB()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->Dq:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Jcg()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->TEQ:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->Sj:I

    return v0
.end method

.method public Sj(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TEQ;->Ym:Landroid/graphics/Bitmap;

    return-void
.end method

.method public TEQ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->HiB:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public TKC()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TEQ$Sj;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->Jcg:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public Ym()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->Ym:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->sP:I

    .line 2
    .line 3
    return v0
.end method

.method public uA()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->EjP:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public vS()[[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->uA:[[I

    .line 2
    .line 3
    return-object v0
.end method
