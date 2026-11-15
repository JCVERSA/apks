.class Lcom/mgtv/a/c/b$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/b$18;->a:Lcom/mgtv/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lz9d;)V
    .locals 7

    iget-object p2, p0, Lcom/mgtv/a/c/b$18;->a:Lcom/mgtv/a/c/b;

    invoke-static {p2}, Lcom/mgtv/a/c/b;->e(Lcom/mgtv/a/c/b;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/mgtv/a/c/b$18;->a:Lcom/mgtv/a/c/b;

    iget-object p1, p1, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    if-eqz p1, :cond_1

    new-instance p1, Ldkd;

    const v5, -0x3b864000    # -999.0f

    const v6, -0x3b864000    # -999.0f

    const v1, -0x3b864000    # -999.0f

    const v2, -0x3b864000    # -999.0f

    const v3, -0x3b864000    # -999.0f

    const v4, -0x3b864000    # -999.0f

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ldkd;-><init>(FFFFFF)V

    iget-object p0, p0, Lcom/mgtv/a/c/b$18;->a:Lcom/mgtv/a/c/b;

    iget-object p0, p0, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    invoke-interface {p0, p1}, Lcom/mgtv/a/c/d;->a(Ldkd;)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/mgmi/model/creative/ClickPosition;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/creative/ClickPosition;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/mgtv/a/c/b$18;->a:Lcom/mgtv/a/c/b;

    iget-object p2, p2, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    if-eqz p2, :cond_1

    new-instance p2, Ldkd;

    iget v0, p1, Lcom/mgmi/model/creative/ClickPosition;->x:I

    int-to-float v1, v0

    iget v0, p1, Lcom/mgmi/model/creative/ClickPosition;->y:I

    int-to-float v2, v0

    const v5, -0x3b864000    # -999.0f

    const v6, -0x3b864000    # -999.0f

    const v3, -0x3b864000    # -999.0f

    const v4, -0x3b864000    # -999.0f

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Ldkd;-><init>(FFFFFF)V

    iget-boolean p1, p1, Lcom/mgmi/model/creative/ClickPosition;->noClickReport:Z

    invoke-virtual {p2, p1}, Ldkd;->b(Z)Ldkd;

    iget-object p0, p0, Lcom/mgtv/a/c/b$18;->a:Lcom/mgtv/a/c/b;

    iget-object p0, p0, Lcom/mgtv/a/c/b;->C:Lcom/mgtv/a/c/d;

    invoke-interface {p0, p2}, Lcom/mgtv/a/c/d;->a(Ldkd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
