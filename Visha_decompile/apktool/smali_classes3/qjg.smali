.class public final synthetic Lqjg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liue;


# instance fields
.field public final synthetic b:Lejf;


# direct methods
.method public synthetic constructor <init>(Lejf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqjg;->b:Lejf;

    return-void
.end method


# virtual methods
.method public final zzdn(Lhue;)V
    .locals 2

    iget-object p0, p0, Lqjg;->b:Lejf;

    invoke-interface {p0}, Lejf;->zzN()Likf;

    move-result-object p0

    iget-object p1, p1, Lhue;->d:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Likf;->e(IIZ)V

    return-void
.end method
