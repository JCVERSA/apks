.class public final Lpf9;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"


# instance fields
.field public final a:Lof9;


# direct methods
.method public constructor <init>(Lof9;)V
    .locals 1

    const-string v0, "shadow"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput-object p1, p0, Lpf9;->a:Lof9;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    iget-object p0, p0, Lpf9;->a:Lof9;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lof9;->d()F

    move-result v0

    invoke-virtual {p0}, Lof9;->b()F

    move-result v1

    invoke-virtual {p0}, Lof9;->c()F

    move-result v2

    invoke-virtual {p0}, Lof9;->a()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    return-void
.end method
