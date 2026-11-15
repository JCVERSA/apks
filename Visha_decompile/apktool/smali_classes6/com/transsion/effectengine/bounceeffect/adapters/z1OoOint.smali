.class public final Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;


# instance fields
.field public final z1OoOdo:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOint;->z1OoOdo:Landroid/widget/ScrollView;

    return-void
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOint;->z1OoOdo:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public final isInAbsoluteEnd()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOint;->z1OoOdo:Landroid/widget/ScrollView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final isInAbsoluteStart()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOint;->z1OoOdo:Landroid/widget/ScrollView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
