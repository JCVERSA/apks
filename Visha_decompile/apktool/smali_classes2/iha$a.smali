.class public Liha$a;
.super Liu5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liha;->r(Liu5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lbt5;

.field public final synthetic e:Liu5;

.field public final synthetic f:Lcom/airbnb/lottie/model/DocumentData;

.field public final synthetic g:Liha;


# direct methods
.method public constructor <init>(Liha;Lbt5;Liu5;Lcom/airbnb/lottie/model/DocumentData;)V
    .locals 0

    iput-object p1, p0, Liha$a;->g:Liha;

    iput-object p2, p0, Liha$a;->d:Lbt5;

    iput-object p3, p0, Liha$a;->e:Liu5;

    iput-object p4, p0, Liha$a;->f:Lcom/airbnb/lottie/model/DocumentData;

    invoke-direct {p0}, Liu5;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lbt5;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Liha$a;->d(Lbt5;)Lcom/airbnb/lottie/model/DocumentData;

    move-result-object p0

    return-object p0
.end method

.method public d(Lbt5;)Lcom/airbnb/lottie/model/DocumentData;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Liha$a;->d:Lbt5;

    invoke-virtual/range {p1 .. p1}, Lbt5;->f()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lbt5;->a()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lbt5;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v4, v4, Lcom/airbnb/lottie/model/DocumentData;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lbt5;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v5, v5, Lcom/airbnb/lottie/model/DocumentData;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lbt5;->d()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lbt5;->c()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lbt5;->e()F

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lbt5;->h(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lbt5;

    iget-object v1, v0, Liha$a;->e:Liu5;

    iget-object v2, v0, Liha$a;->d:Lbt5;

    invoke-virtual {v1, v2}, Liu5;->a(Lbt5;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lbt5;->c()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lbt5;->b()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lcom/airbnb/lottie/model/DocumentData;

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lbt5;->g()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v2, v0, Liha$a;->f:Lcom/airbnb/lottie/model/DocumentData;

    iget-object v4, v1, Lcom/airbnb/lottie/model/DocumentData;->b:Ljava/lang/String;

    iget v5, v1, Lcom/airbnb/lottie/model/DocumentData;->c:F

    iget-object v6, v1, Lcom/airbnb/lottie/model/DocumentData;->d:Lcom/airbnb/lottie/model/DocumentData$Justification;

    iget v7, v1, Lcom/airbnb/lottie/model/DocumentData;->e:I

    iget v8, v1, Lcom/airbnb/lottie/model/DocumentData;->f:F

    iget v9, v1, Lcom/airbnb/lottie/model/DocumentData;->g:F

    iget v10, v1, Lcom/airbnb/lottie/model/DocumentData;->h:I

    iget v11, v1, Lcom/airbnb/lottie/model/DocumentData;->i:I

    iget v12, v1, Lcom/airbnb/lottie/model/DocumentData;->j:F

    iget-boolean v13, v1, Lcom/airbnb/lottie/model/DocumentData;->k:Z

    iget-object v14, v1, Lcom/airbnb/lottie/model/DocumentData;->l:Landroid/graphics/PointF;

    iget-object v15, v1, Lcom/airbnb/lottie/model/DocumentData;->m:Landroid/graphics/PointF;

    invoke-virtual/range {v2 .. v15}, Lcom/airbnb/lottie/model/DocumentData;->a(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v0, v0, Liha$a;->f:Lcom/airbnb/lottie/model/DocumentData;

    return-object v0
.end method
