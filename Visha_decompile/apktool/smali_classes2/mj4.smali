.class public Lmj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah1;


# instance fields
.field public final a:Lcom/airbnb/lottie/model/content/GradientType;

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Lec;

.field public final d:Lfc;

.field public final e:Lic;

.field public final f:Lic;

.field public final g:Ljava/lang/String;

.field public final h:Ldc;

.field public final i:Ldc;

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lec;Lfc;Lic;Lic;Ldc;Ldc;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmj4;->a:Lcom/airbnb/lottie/model/content/GradientType;

    iput-object p3, p0, Lmj4;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lmj4;->c:Lec;

    iput-object p5, p0, Lmj4;->d:Lfc;

    iput-object p6, p0, Lmj4;->e:Lic;

    iput-object p7, p0, Lmj4;->f:Lic;

    iput-object p1, p0, Lmj4;->g:Ljava/lang/String;

    iput-object p8, p0, Lmj4;->h:Ldc;

    iput-object p9, p0, Lmj4;->i:Ldc;

    iput-boolean p10, p0, Lmj4;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lur5;Lcom/airbnb/lottie/model/layer/a;)Lbg1;
    .locals 1

    new-instance v0, Lnj4;

    invoke-direct {v0, p1, p2, p3, p0}, Lnj4;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lur5;Lcom/airbnb/lottie/model/layer/a;Lmj4;)V

    return-object v0
.end method

.method public b()Lic;
    .locals 0

    iget-object p0, p0, Lmj4;->f:Lic;

    return-object p0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 0

    iget-object p0, p0, Lmj4;->b:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public d()Lec;
    .locals 0

    iget-object p0, p0, Lmj4;->c:Lec;

    return-object p0
.end method

.method public e()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 0

    iget-object p0, p0, Lmj4;->a:Lcom/airbnb/lottie/model/content/GradientType;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmj4;->g:Ljava/lang/String;

    return-object p0
.end method

.method public g()Lfc;
    .locals 0

    iget-object p0, p0, Lmj4;->d:Lfc;

    return-object p0
.end method

.method public h()Lic;
    .locals 0

    iget-object p0, p0, Lmj4;->e:Lic;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lmj4;->j:Z

    return p0
.end method
