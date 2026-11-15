.class public Lcy0$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcy0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcy0;


# direct methods
.method public constructor <init>(Lcy0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcy0$b;->a:Lcy0;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcy0;Lcy0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcy0$b;-><init>(Lcy0;)V

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

    iget-object p0, p0, Lcy0$b;->a:Lcy0;

    return-object p0
.end method
