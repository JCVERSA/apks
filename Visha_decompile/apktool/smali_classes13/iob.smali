.class public Liob;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lkob;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/ImageView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lkob;->c(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lkob;

    move-result-object p1

    iput-object p1, p0, Liob;->a:Lkob;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lkob;->i(Z)V

    iget-object p0, p0, Liob;->a:Lkob;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lkob$b;
    .locals 0

    iget-object p0, p0, Liob;->a:Lkob;

    invoke-virtual {p0, p1}, Lkob;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkob$b;

    return-object p0
.end method
