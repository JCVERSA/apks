.class public Lca0$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lca0;


# direct methods
.method public constructor <init>(Lca0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca0$b;->a:Lca0;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lca0;Lca0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lca0$b;-><init>(Lca0;)V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lca0$b;->a:Lca0;

    return-object p0
.end method
