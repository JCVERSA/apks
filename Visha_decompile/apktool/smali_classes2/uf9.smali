.class public Luf9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah1;


# instance fields
.field public final a:Z

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Ljava/lang/String;

.field public final d:Lcc;

.field public final e:Lfc;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcc;Lfc;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luf9;->c:Ljava/lang/String;

    iput-boolean p2, p0, Luf9;->a:Z

    iput-object p3, p0, Luf9;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Luf9;->d:Lcc;

    iput-object p5, p0, Luf9;->e:Lfc;

    iput-boolean p6, p0, Luf9;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lur5;Lcom/airbnb/lottie/model/layer/a;)Lbg1;
    .locals 0

    new-instance p2, Lgv3;

    invoke-direct {p2, p1, p3, p0}, Lgv3;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Luf9;)V

    return-object p2
.end method

.method public b()Lcc;
    .locals 0

    iget-object p0, p0, Luf9;->d:Lcc;

    return-object p0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 0

    iget-object p0, p0, Luf9;->b:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Luf9;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e()Lfc;
    .locals 0

    iget-object p0, p0, Luf9;->e:Lfc;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Luf9;->f:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Luf9;->a:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
